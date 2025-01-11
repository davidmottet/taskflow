import 'package:flutter/material.dart';
  
class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Rechercher...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
        ),
      ),
    );
  }
}