import 'package:flutter/material.dart';
import 'dart:math';

class CircularButtonsPage extends StatefulWidget {
  @override
  _RotatingWheelPageState createState() => _RotatingWheelPageState();
}

class _RotatingWheelPageState extends State<CircularButtonsPage> {
  double _rotationAngle = 0.0;
  final List<String> _buttonLabels = ['Button 1', 'Button 2', 'Button 3', 'Button 4', 'Button 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotating Wheel'),
      ),
      body: Center(
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _rotationAngle += details.delta.dx * 0.01;
            });
          },
          child: Stack(
            children: [
              _buildWheelBackground(),
              ..._buildButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWheelBackground() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
    );
  }

  List<Widget> _buildButtons() {
    double angle = 2 * pi / _buttonLabels.length;
    double currentAngle = 0;

    return List.generate(_buttonLabels.length, (index) {
      currentAngle = index * angle;

      return Positioned(
        left: 100 + cos(currentAngle) * 80,
        top: 100 + sin(currentAngle) * 80,
        child: ElevatedButton(
          onPressed: () {
            // TODO: 按鈕被按下時的處理邏輯
            print('Button ${index + 1} pressed');
          },
          child: Text(_buttonLabels[index]),
        ),
      );
    });
  }
}
