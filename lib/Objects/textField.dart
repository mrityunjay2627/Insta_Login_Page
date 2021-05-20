import 'package:flutter/material.dart';

class textField extends StatelessWidget {

  final String hintText;
  final IconData icon;

  textField({@required this.hintText,@required this.icon});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 50,
          width: _width-40,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Icon(icon,size: 25,color: Colors.black.withOpacity(0.7),)
                  ],
                ),
              ),
              Container(
                width: _width-40,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextField(
            onChanged: (x){},
            style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),
            showCursor: false,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),
                hintText: hintText,
            ),
          ),
        )
      ],
    );
  }
}
