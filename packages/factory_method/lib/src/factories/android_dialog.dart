
import 'package:factory_method/src/factories/dialog_action.dart';
import 'package:factory_method/src/factories/i_dialog.dart';
import 'package:flutter/material.dart';

class AndroidDialog implements IDialog {
  @override
  Widget create(BuildContext context, Widget title, Widget content, List<DialogAction> actions) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions.map((e) {
        return TextButton(
          onPressed: e.onPressed, 
          child: e.child
          );
      }).toList(),
    );
  }

}