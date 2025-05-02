import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/src/colors.dart';
import 'package:flutter_datetime_picker/src/typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool enabled;
  final TextStyle? textStyle;

  PrimaryButton({
    this.onPressed,
    required this.text,
    this.enabled = true,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: enabled ? onPressed : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      color: Theme.of(context).colorScheme.primary,
      disabledColor: Theme.of(context).disabledColor,
      child: Container(
        height: 48,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 1.2),
            child: Text(
              text,
              style: textStyle ??
                  OneTypography.t16M.copyWith(
                    color: enabled ? Colors.white : OneColors.ink300,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
