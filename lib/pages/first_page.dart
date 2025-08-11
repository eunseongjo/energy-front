import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.purple.withOpacity(1),
            Colors.black.withOpacity(1),
          ],
          center: Alignment.center,
          radius: 0.3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "이번 달 누적 요금",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 10),

          const Text(
            "₩23,356",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),

          const SizedBox(height: 200),
          SizedBox(
              height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _circleInfo("15.56㎥", "1,382원"),
              const SizedBox(width: 12),
              _circleInfo("35.32㎥", "7,297원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),

            ],
          )
        )

        ],
      ),
    );
  }

  static Widget _circleInfo(String value, String label) {
    return Container(
      width: 200,
      height: 100,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xBF8B52E6),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x498B52E6),
            blurRadius: 10,
            offset: Offset(2, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
