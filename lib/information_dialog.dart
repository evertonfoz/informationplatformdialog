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