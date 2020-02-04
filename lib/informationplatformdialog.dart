library informationplatformdialog;

import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:informationplatformdialog/src/information_cupertino_alert_dialog.dart';
import 'package:informationplatformdialog/src/information_material_alert_dialog.dart';

class InformationAlertDialog extends StatelessWidget {
  final Icon iconTitle;
  final String title;
  final String message;
  final List<Widget> buttons;

  const InformationAlertDialog({
    this.iconTitle,
    @required this.title,
    @required this.message,
    @required this.buttons,
  });
  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? InformationMaterialAlertDialog(
            iconTitle: iconTitle,
            title: title,
            message: message,
            buttons: buttons,
          )
        : InformationCupertinoAlertDialog(
            iconTitle: iconTitle,
            title: title,
            message: message,
            buttons: buttons,
          );
  }
}

class ActionsFlatButtonToAlertDialog extends StatelessWidget {
  final String messageButton;
  final TextStyle textStyleMessageButton;
  final Icon iconButton;
  final bool isEnabled;

  ActionsFlatButtonToAlertDialog(
      {this.messageButton,
      this.textStyleMessageButton = const TextStyle(color: Colors.black),
      this.iconButton,
      this.isEnabled = true})
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
