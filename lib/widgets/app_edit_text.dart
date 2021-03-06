import 'package:flutter/material.dart';

class AppEditTextField extends StatelessWidget {
  final String hintStyle;
  final int minLines;
  final int maxLines;
  final Widget? suffixIcon;
  final TextInputType keyboard;
  final TextEditingController? controller;
  final bool obscureText;
  final bool dateSelector;
  final Function? onDateChange;
  final double? onHeight;
  final double? onWidth;

  const AppEditTextField({
    Key? key,
    this.hintStyle = "",
    this.minLines = 1,
    this.onHeight,
    this.onWidth,
    this.maxLines = 2,
    this.keyboard = TextInputType.name,
    this.obscureText = false,
    this.controller,
    this.suffixIcon,
    this.dateSelector = false,
    this.onDateChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: onWidth ?? 100,
        height: onHeight ?? 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xffe7e7e7),
            width: 1,
          ),
          color: Color(0xffffffff),
        ),
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          maxLines: obscureText ? 1 : maxLines,
          minLines: obscureText ? 1 : minLines,
          controller: controller,
          keyboardType: keyboard,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintStyle,
            suffixIcon: suffixIcon,
          ),
          readOnly: dateSelector,
          onTap: dateSelector
              ? () async {
                  var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  );

                  if (data != null && onDateChange != null) {
                    onDateChange!(data);
                  }
                }
              : null,
        ),
      ),
    );
  }
}
