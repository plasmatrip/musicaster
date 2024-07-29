import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/idea.dart';

class IdeaRepo with ChangeNotifier {
  Box repo = Hive.box<Idea>(Boxes.idea);

  Idea _idea = Idea.create();

  bool editMode = false;
  int editKey = 0;

  String get title => _idea.title;
  set title(String value) {
    _idea.title = value;
    notifyListeners();
  }

  String get genre => _idea.genre;
  set genre(String value) {
    _idea.genre = value;
    notifyListeners();
  }

  String get instruments => _idea.instruments;
  set instruments(String value) {
    _idea.instruments = value;
    notifyListeners();
  }

  String get description => _idea.description;
  set description(String value) {
    _idea.description = value;
    notifyListeners();
  }

  bool getInstrumet(int value) {
    if (_idea.instrumentsList.isNotEmpty) {
      return _idea.instrumentsList.any((element) => element == value);
    }
    return false;
  }

  void setInstrument(int value) {
    if (_idea.instrumentsList.isNotEmpty) {
      if (_idea.instrumentsList.any((element) => element == value)) {
        _idea.instrumentsList.remove(value);
      } else {
        _idea.instrumentsList.add(value);
      }
    } else {
      _idea.instrumentsList.add(value);
    }
    notifyListeners();
  }

  void clean() {
    _idea.clean();
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (editMode) {
      Idea idea = repo.get(editKey);
      idea.copy(_idea);
      idea.save();
    } else {
      Idea idea = Idea.create(from: _idea);
      repo.add(idea);
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
    Idea idea = repo.get(key);
    idea.delete();
    notifyListeners();
  }

  void edit(int key) {
    _idea.copy(repo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _idea.isNotEmpty();
  }

  Iterable ideas() {
    return repo.values;
  }
}
