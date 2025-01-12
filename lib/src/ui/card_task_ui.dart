import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  final Color color;
  final String title;
  final List<String> categories;
  final String startTime;
  final String endTime;
  final Color lineColor;

  const CardTask({
    super.key,
    required this.color,
    required this.title,
    required this.categories,
    required this.startTime,
    required this.endTime,
    this.lineColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 4.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: lineColor,
                  borderRadius: BorderRadius.circular(1.5),
                ),
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Wrap(
                        spacing: 2.0,
                        children: categories.map((category) {
                          return Chip(
                            label: Text(
                              category,
                              style: TextStyle(fontSize: 8, color: Theme.of(context).colorScheme.primary),
                            ),
                            backgroundColor: Color(0xFFfee5a0),
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: BorderSide(color: Colors.transparent),
                            ),
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              startTime,
                              style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              '-',
                              style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor)
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              endTime,
                              style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ), 
        ),
      )
    );
  }
}