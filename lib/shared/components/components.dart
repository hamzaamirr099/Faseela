import 'dart:ffi';

import 'package:flutter/material.dart';

Widget defaultTextField({
  required TextEditingController ctr,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  VoidCallback? visiblePassword,
  int maxlines = 1,
  TextInputType? keyboardType,
  })
{
  return TextFormField(
    cursorColor: Colors.green[600],
    keyboardType: keyboardType,
    controller: ctr,
    maxLines: maxlines,
    obscureText: isPassword,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      prefixIcon: Icon(prefix, color: Colors.grey),
      suffixIcon: IconButton(
        onPressed: visiblePassword,
        icon: Icon(
            suffix ?? suffix,
            color: Colors.grey
        ),
      ),
      labelText: label,
      alignLabelWithHint: true,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}

Widget defaultButton({
  required VoidCallback? onPressed,
  required String text,
  double? width,
  Color color = Colors.green,
  double? height,

}) => Container(
  width: width,
  height: height,
  child: MaterialButton(
    onPressed: onPressed,
    color: color,
    child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    ),
  ),
);
