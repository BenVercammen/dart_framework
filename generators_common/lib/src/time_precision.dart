enum TimePrecision {
  milliseconds,
  microseconds,
}

extension TimePrecisionConversions on TimePrecision {
  String get fromDurationProperty {
    switch (this) {
      case TimePrecision.milliseconds:
        return 'inMilliseconds';
      case TimePrecision.microseconds:
        return 'inMicroseconds';
      default:
        throw UnimplementedError();
    }
  }

  String get toDurationProperty {
    switch (this) {
      case TimePrecision.milliseconds:
        return 'milliseconds';
      case TimePrecision.microseconds:
        return 'microseconds';
      default:
        throw UnimplementedError();
    }
  }

  static TimePrecision fromString(String value) {
    final values = TimePrecision.values.where((tp) => tp.name == value);
    if (values.isEmpty) {
      throw UnimplementedError();
    }
    return values.first;
  }
}
