import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _TokenMedico = prefs.getString('ff_TokenMedico') ?? _TokenMedico;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_User')) {
        try {
          final serializedData = prefs.getString('ff_User') ?? '{}';
          _User =
              UserDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_medicoColaborador')) {
        try {
          final serializedData =
              prefs.getString('ff_medicoColaborador') ?? '{}';
          _medicoColaborador =
              MedicoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _TokenMedico = '';
  String get TokenMedico => _TokenMedico;
  set TokenMedico(String value) {
    _TokenMedico = value;
    prefs.setString('ff_TokenMedico', value);
  }

  UserDataStruct _User = UserDataStruct();
  UserDataStruct get User => _User;
  set User(UserDataStruct value) {
    _User = value;
    prefs.setString('ff_User', value.serialize());
  }

  void updateUserStruct(Function(UserDataStruct) updateFn) {
    updateFn(_User);
    prefs.setString('ff_User', _User.serialize());
  }

  MedicoStruct _medicoColaborador = MedicoStruct();
  MedicoStruct get medicoColaborador => _medicoColaborador;
  set medicoColaborador(MedicoStruct value) {
    _medicoColaborador = value;
    prefs.setString('ff_medicoColaborador', value.serialize());
  }

  void updateMedicoColaboradorStruct(Function(MedicoStruct) updateFn) {
    updateFn(_medicoColaborador);
    prefs.setString('ff_medicoColaborador', _medicoColaborador.serialize());
  }

  String _HTMLMessage = '';
  String get HTMLMessage => _HTMLMessage;
  set HTMLMessage(String value) {
    _HTMLMessage = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
