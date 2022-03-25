import 'package:flutter/material.dart';
import 'package:my_task/providers/all_providers.dart';
import 'package:provider/provider.dart';

class RadioButton extends StatelessWidget {
  String? title;
  int? value;
  final onChanged;
  RadioButton({this.title, this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AllProvider>(context, listen: false);
    return RadioListTile(
      value: value,
      groupValue: provider.groupValue,
      onChanged: onChanged,
      title: Text(title!),
    );
  }
}
