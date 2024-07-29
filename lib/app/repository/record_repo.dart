import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/record.dart';

class RecordRepo with ChangeNotifier {
  Box repo = Hive.box<Record>(Boxes.record);

  Record _record = Record.create();

  bool editMode = false;
  int editKey = 0;

  String get title => _record.title;
  set title(String value) {
    _record.title = value;
    notifyListeners();
  }

  String get melody => _record.melody;
  set melody(String value) {
    _record.melody = value;
    notifyListeners();
  }

  String get chorus => _record.chorus;
  set chorus(String value) {
    _record.chorus = value;
    notifyListeners();
  }

  String get description => _record.description;
  set description(String value) {
    _record.description = value;
    notifyListeners();
  }

  String getVerse(int index) {
    if (_record.isNotEmpty()) {
      return _record.verse[index];
    }
    return '';
  }

  void addVerse() {
    if (_record.verse.isNotEmpty) {
      if (_record.verse.last.isNotEmpty) {
        _record.verse.add('');
        notifyListeners();
      }
    }
  }

  void clean() {
    _record.clean();
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (editMode) {
      Record record = repo.get(editKey);
      record.copy(_record);
      record.save();
    } else {
      Record record = Record.create(from: _record);
      repo.add(record);
    }
    clean();
    notifyListeners();
  }

  Future<void> delete({int? key}) async {
    if (key == null) {
      if (editMode) {
        key = editKey;
      } else {
        return;
      }
    }
    Record record = repo.get(key);
    record.delete();
    notifyListeners();
  }

  void edit(int key) {
    _record.copy(repo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _record.isNotEmpty();
  }

  Iterable records() {
    return repo.values;
  }
}
