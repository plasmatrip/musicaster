import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/instrument.dart';

const List<String> instrumentName = [
  'Acoustic Guitar',
  'Pan Flute',
  'Drums',
  'Musical Trumpet',
  'Triangle',
  'Banjo',
  'Harp',
  'Flute',
  'Saxophone',
  'Cello',
  'Xylophone',
  'Tambourine',
  'Lyra',
  'Synthesizer',
  'Castanets',
  'Electric Guitar',
  'Bass Guitar',
  'Violin',
  'Balalaika',
  'Ukulele',
];

class InstrumentRepo with ChangeNotifier {
  Box repo = Hive.box<Instrument>(Boxes.instrument);

  Instrument _instrument = Instrument.create();

  bool editMode = false;
  int editKey = 0;

  String get title => _instrument.title;
  set title(String value) {
    _instrument.title = value;
    notifyListeners();
  }

  String get type => _instrument.type;
  set type(String value) {
    _instrument.type = value;
    notifyListeners();
  }

  String get icon => _instrument.icon;
  set icon(String value) {
    _instrument.instrumentId = 0;
    _instrument.icon = value;
    notifyListeners();
  }

  int get instrumentId => _instrument.instrumentId;
  set instrumentId(int value) {
    _instrument.icon = '';
    _instrument.instrumentId = value;
    notifyListeners();
  }

  String get description => _instrument.description;
  set description(String value) {
    _instrument.description = value;
    notifyListeners();
  }

  void clean() {
    _instrument.clean();
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (editMode) {
      Instrument instrument = repo.get(editKey);
      instrument.copy(_instrument);
      instrument.save();
    } else {
      Instrument instrument = Instrument.create(from: _instrument);
      repo.add(instrument);
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
    Instrument instrument = repo.get(key);
    instrument.delete();
    notifyListeners();
  }

  void edit(int key) {
    _instrument.copy(repo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _instrument.isNotEmpty();
  }

  Iterable instruments() {
    return repo.values;
  }
}
