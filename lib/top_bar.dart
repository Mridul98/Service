import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF2f3542),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'enago',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.green,
                textColor: Colors.white,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text('Get Quote'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
