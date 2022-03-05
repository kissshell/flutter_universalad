bool _debugFlag = false;

/// Is app run a debug mode.
bool isDebug() {
  /// Assert statements have no effect in production code;
  /// they’re for development only. Flutter enables asserts in debug mode.
  assert(() {
    _debugFlag = true;
    return _debugFlag;
  }());
  return _debugFlag;
}

/// Print on ly debug mode
void dPrint(Object? object) {
  if(isDebug()) {
    print(object);
  }
}