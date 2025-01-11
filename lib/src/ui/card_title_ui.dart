import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String? time;
  final bool hasImage;
  final bool hasIcons;
  final bool isLargeText;

  const CardTile({
    required this.color,
    required this.title,
    required this.subtitle,
    this.time,
    this.hasImage = false,
    this.hasIcons = false,
    this.isLargeText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(fontSize: isLargeText ? 16 : 14),
              ),
              if (time != null) ...[
                SizedBox(height: 8),
                Text(
                  time!,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
              if (hasImage) ...[
                SizedBox(height: 8),
                Icon(Icons.image, size: 40),
              ],
              if (hasIcons) ...[
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.edit, size: 20),
                    SizedBox(width: 8),
                    Icon(Icons.delete, size: 20),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}