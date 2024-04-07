import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final svgIcon;
  const CategoryCard({super.key, required this.text, this.svgIcon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Colors.red,
          ),
        ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgIcon ,color: Color(0xFF395AD1), width: 100, height: 100,),
                  Spacer(),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, color: Color(0xFF395AD1) )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
