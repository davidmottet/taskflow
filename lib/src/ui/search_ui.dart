import 'package:flutter/material.dart';
import 'package:taskflow/src/config/theme.dart';
  
class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Rechercher...',
          filled: true,
          fillColor: Theme.of(context).customIconBackground,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Theme.of(context).customIconBackground),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
        ),
      ),
    );
  }
}