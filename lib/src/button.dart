import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/src/typography.dart';

import 'colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onClick;
  final bool enabled;
  final String text;

  PrimaryButton({this.onClick, this.enabled = true, this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: enabled ? OneColors.primary500 : OneColors.ink200,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        onTap: enabled ? onClick : null,
        child: Container(
          height: 48,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 1.2),
              child: Text(
                text,
                style: OneTypography.t16M.copyWith(
                  color: enabled ? OneColors.white500 : OneColors.ink300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
