import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/src/typography.dart';

import 'colors.dart';

class BottomSheetAppBar extends StatelessWidget {
  final String title;
  final Widget action;

  BottomSheetAppBar(
    this.title, {
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 56,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                left: 12,
                top: 0,
                bottom: 0,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    customBorder: CircleBorder(),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    title ?? "",
                    style: OneTypography.t16M.copyWith(
                      color: OneColors.ink500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (action != null)
                Positioned(top: 0, bottom: 0, right: 16, child: action),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: OneColors.blue300,
        )
      ],
    );
  }
}
