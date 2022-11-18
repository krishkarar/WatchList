import 'package:flutter/material.dart';

class ShowTile extends StatelessWidget {


  late final String showTitle;
  final bool isChecked;
  final ValueChanged<bool?> checkBoxCallBack;
  final VoidCallback onLongTapFn;

  ShowTile({required this.isChecked, required this.showTitle, required this.checkBoxCallBack, required this.onLongTapFn});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongTapFn,
      title: Text(
        showTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),

    );
  }
}



