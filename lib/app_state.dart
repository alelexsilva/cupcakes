import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _appCart = [];
  List<DocumentReference> get appCart => _appCart;
  set appCart(List<DocumentReference> value) {
    _appCart = value;
  }

  void addToAppCart(DocumentReference value) {
    _appCart.add(value);
  }

  void removeFromAppCart(DocumentReference value) {
    _appCart.remove(value);
  }

  void removeAtIndexFromAppCart(int index) {
    _appCart.removeAt(index);
  }

  void updateAppCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _appCart[index] = updateFn(_appCart[index]);
  }

  void insertAtIndexInAppCart(int index, DocumentReference value) {
    _appCart.insert(index, value);
  }

  double _appSomaCart = 0.0;
  double get appSomaCart => _appSomaCart;
  set appSomaCart(double value) {
    _appSomaCart = value;
  }

  double _appTempQntPrice = 0.0;
  double get appTempQntPrice => _appTempQntPrice;
  set appTempQntPrice(double value) {
    _appTempQntPrice = value;
  }

  int _appTempQntItens = 1;
  int get appTempQntItens => _appTempQntItens;
  set appTempQntItens(int value) {
    _appTempQntItens = value;
  }

  bool _appCartClickAdd = false;
  bool get appCartClickAdd => _appCartClickAdd;
  set appCartClickAdd(bool value) {
    _appCartClickAdd = value;
  }

  DocumentReference? _appTestState;
  DocumentReference? get appTestState => _appTestState;
  set appTestState(DocumentReference? value) {
    _appTestState = value;
  }
}
