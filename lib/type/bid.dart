const _STEP_VALUE = 50;

class Bid {
  double _value = 0;
  double get value => _value;

  Bid();

  void increment() {
    final newValue = _value + _STEP_VALUE;
    _setValue(newValue);
  }

  void decrement() {
    final newValue = _value - _STEP_VALUE;
    _setValue(newValue);
  }

  void _setValue(double value) {
    if (value >= 0) {
      _value = value;
    }
  }

  bool canDecrement() {
    return value >= _STEP_VALUE;
  }

  @override
  String toString() {
    return _value.toStringAsFixed(1);
  }
}