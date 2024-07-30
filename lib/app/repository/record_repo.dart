import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/record.dart';

class RecordsRepo with ChangeNotifier {
  Box repo = Hive.box<Records>(Boxes.records);

  Records _records = Records.create();

  bool editMode = false;
  int editKey = 0;

  String get title => _records.title;
  set title(String value) {
    _records.title = value;
    notifyListeners();
  }

  String get melody => _records.melody;
  set melody(String value) {
    _records.melody = value;
    notifyListeners();
  }

  String get chorus => _records.chorus;
  set chorus(String value) {
    _records.chorus = value;
    notifyListeners();
  }

  String get description => _records.description;
  set description(String value) {
    _records.description = value;
    notifyListeners();
  }

  String getVerse(int index) {
    if (_records.isNotEmpty()) {
      return _records.verse[index];
    }
    return '';
  }

  void setVerse(int index, String value) {
    if (_records.verse.isNotEmpty) {
      _records.verse[index] = value;
      notifyListeners();
    }
  }

  int get verseLen => _records.verse.length;

  void addVerse() {
    if (_records.verse.isNotEmpty) {
      if (_records.verse.last.isNotEmpty) {
        _records.verse.add('');
        notifyListeners();
      }
    }
  }

  void clean() {
    _records.clean();
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (editMode) {
      Records records = repo.get(editKey);
      records.copy(_records);
      records.save();
    } else {
      Records records = Records.create(from: _records);
      repo.add(records);
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
    Records records = repo.get(key);
    records.delete();
    notifyListeners();
  }

  void edit(int key) {
    _records.copy(repo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _records.isNotEmpty();
  }

  Iterable records() {
    return repo.values;
  }
}
