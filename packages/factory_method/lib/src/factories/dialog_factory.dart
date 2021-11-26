
import 'dart:io';

import 'package:factory_method/src/factories/android_dialog.dart';
import 'package:factory_method/src/factories/i_dialog.dart';
import 'package:factory_method/src/factories/ios_dialog.dart';
import 'package:flutter/material.dart';

import 'dialog_action.dart';

class DialogFactory {
  
  static Future<T?> showAlertDialog<T>(BuildContext context, {
    Widget? title,
    Widget? content,
    List<DialogAction>? actions
  }) {
    late final IDialog dialogData;

    if (Platform.isIOS) {
      dialogData = IosDialog();
    } else {
      dialogData = AndroidDialog();
    }

    return showDialog<T>(
      context: context, 
      builder: (context) => dialogData.create(
        context, 
        title ?? const Text("Texto não informado"), 
        content ?? const Text("Texto não informado"), 
        actions ?? []));
  }
}