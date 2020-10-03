import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  ItemList({Key key, this.icon, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color ?? Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Icon(
                  icon ?? Icons.fastfood,
                  color: Colors.white,
                ),
                Text(
                  title ?? "Beach",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}