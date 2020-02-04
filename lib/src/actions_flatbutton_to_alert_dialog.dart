import 'package:flutter/material.dart';

class ActionsFlatButtonToAlertDialog extends StatelessWidget {
  final String messageButton;
  final TextStyle textStyleMessageButton;
  final Icon iconButton;
  final bool isEnabled;

  ActionsFlatButtonToAlertDialog(
      {this.messageButton,
      this.textStyleMessageButton = const TextStyle(color: Colors.black),
      this.iconButton,
      this.isEnabled})
      : assert(messageButton != null || iconButton != null);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (this.isEnabled)
          ? () {
              Navigator.of(context).pop(this.messageButton);
            }
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.messageButton,
            style: (this.isEnabled)
                ? this.textStyleMessageButton
                : this.textStyleMessageButton.copyWith(
                      color: Colors.grey,
                    ),
          ),
          (this.iconButton != null)
              ? SizedBox(width: 5)
              : SizedBox(
                  width: 0,
                ),
          (this.iconButton != null)
              ? this.iconButton
              : SizedBox(
                  width: 0,
                ),
        ],
      ),
    );
  }
}
