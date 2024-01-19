import 'package:flutter/material.dart';

abstract class AbstractProvider<T> extends ChangeNotifier {
  @protected
  bool mounted = true;
  T _state;

  AbstractProvider(this._state);

  @override
  void dispose() {
    mounted = false;
    super.dispose();
  }

  T get state => _state;
  set state(T state) {
    _state = state;
    notifyListeners();
  }
}
