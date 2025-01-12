import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void navigateWithHapticFeedback(BuildContext context, String routeName, {Object? arguments}) {
  HapticFeedback.lightImpact();
  Navigator.pushNamed(context, routeName, arguments: arguments);
}