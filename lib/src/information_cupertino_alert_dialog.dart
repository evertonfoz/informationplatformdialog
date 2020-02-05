import 'package:flutter/cupertino.dart';

class InformationCupertinoAlertDialog extends StatelessWidget {
  final Icon iconTitle;
  final String title;
  final String message;
  final List<Widget> buttons;

  const InformationCupertinoAlertDialog({
    this.iconTitle,
    this.title,
    @required this.message,
    @required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          (this.iconTitle != null)
              ? this.iconTitle
              : SizedBox(
                  width: 0,
                ),
          (this.iconTitle != null)
              ? SizedBox(width: 5)
              : SizedBox(
                  width: 0,
                ),
          (this.title != null)
              ? Text(this.title)
              : SizedBox(
                  width: 0,
                ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Text(this.message),
        ],
      ),
      actions: buttons,
    );
  }
}