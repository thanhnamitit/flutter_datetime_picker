import 'package:app/core/colors.dart';
import 'package:app/core/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool enabled;

  PrimaryButton({this.onPressed, required this.text, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: enabled ? onPressed : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      color: OneColors.primary500,
      disabledColor: Theme.of(context).disabledColor,
      child: Container(
        height: 48,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 1.2),
            child: Text(
              text,
              style: OneTypography.t16M.copyWith(
                color: enabled ? Colors.white : OneColors.ink300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
