import 'package:flutter/material.dart';
import 'package:web_app/utils/color.dart';

ButtonStyle borderButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.transparent),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: BorderSide(color: appColors.primaryColor),
    borderRadius: BorderRadius.circular(12),
  ))
);
