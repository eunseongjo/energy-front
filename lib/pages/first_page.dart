import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_background.png'),
        fit: BoxFit.cover,
      ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          const Text(
            "이번 달 누적 요금",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 10),

          const Text(
            "₩23,356",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),

          const SizedBox(height: 300),

          SizedBox(
            height: 255,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 55),
              _circleInfo('assets/images/electric_image.png', "15.56㎥", "1,382원"),
              const SizedBox(width: 12),
              _circleInfo('assets/images/gas_image.png',"35.32㎥", "7,297원"),
              const SizedBox(width: 12),
              _circleInfo('assets/images/water_image.png',"1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo('assets/images/electric_image.png',"1번", "250,000원"),
              const SizedBox(width: 12),
              _circleInfo('assets/images/electric_image.png',"1번", "250,000원"),
              const SizedBox(width: 55),
            ],
          )
        )

        ],
      ),
    );
  }

  static Widget _circleInfo(String image, String value, String label) {
    return Container(padding: EdgeInsets.all(15),
      child: Container(
      width: 230,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(
          side: BorderSide(
            width: 0.5,
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
          Image.asset(image, width: 20, height: 20, fit: BoxFit.contain),
          const SizedBox(height: 10,),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Text(label, style: const TextStyle(fontSize: 20)),
        ],
      ),
    )
    );
  }
}
