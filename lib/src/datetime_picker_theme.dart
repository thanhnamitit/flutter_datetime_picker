import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DatePickerTheme with DiagnosticableTreeMixin {
  final TextStyle cancelStyle;
  final TextStyle doneStyle;
  final TextStyle itemStyle;
  final Color backgroundColor;
  final Color? headerColor;

  final double containerHeight;
  final double titleHeight;
  final double itemHeight;

  const DatePickerTheme({
    this.cancelStyle = const TextStyle(color: Color(0xFF666666), fontSize: 16),
    this.doneStyle = const TextStyle(color: Color(0xFF2F6BFF), fontSize: 16),
    this.itemStyle = const TextStyle(color: Colors.white, fontSize: 18),
    this.backgroundColor = const Color(0xFF161A1D),
    this.headerColor,
    this.containerHeight = 210.0,
    this.titleHeight = 44.0,
    this.itemHeight = 36.0,
  });
}
