import 'package:flutter/material.dart';
import 'music.dart';
class choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2.5, // 放大倍率
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircularButtonsPage()),
                  );
                },
                child: Text(
                  '1970~1980',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Transform.scale(
              scale: 2.5, // 放大倍率
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircularButtonsPage()),
                  );
                },
                child: Text(
                  '1980~1990',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Transform.scale(
              scale: 2.5, // 放大倍率
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircularButtonsPage()),
                  );
                },
                child: Text(
                  '1990~2000',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Transform.scale(
              scale: 2.5, // 放大倍率
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircularButtonsPage()),
                  );
                },
                child: Text(
                  '2000~2010',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Transform.scale(
              scale: 2.5, // 放大倍率
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircularButtonsPage()),
                  );
                },
                child: Text(
                  '2010~2020',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
