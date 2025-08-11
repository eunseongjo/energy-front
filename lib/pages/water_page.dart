import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  const WaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.blue.withOpacity(0.2),
            Colors.blue.withOpacity(0.05),
          ],
          center: Alignment.topCenter,
          radius: 1.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "이번 달 수도 사용량",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          SizedBox(height: 10),
          Text(
            "15.56㎥",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
