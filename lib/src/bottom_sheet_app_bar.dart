import 'package:app/core/typography.dart';
import 'package:app/ui/screen/conversation/item/base/base_conversation_message_item.dart';
import 'package:app/ui/widget/app_divider.dart';
import 'package:flutter/material.dart';

class BottomSheetAppBar extends StatelessWidget {
  final String title;
  final Widget? action;

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
                        color: Theme.of(context).iconTheme.color,
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
                    title,
                    style: OneTypography.t16M.copyWith(
                      color: Theme.of(context).iconTheme.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (action != null)
                Positioned(top: 0, bottom: 0, right: 16, child: action!),
            ],
          ),
        ),
        AppDivider(),
      ],
    );
  }
}
