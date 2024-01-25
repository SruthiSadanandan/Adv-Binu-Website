import 'package:flutter/material.dart';

class IconButtonBackWidget extends StatelessWidget {
  Color? color;
    IconButtonBackWidget({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    },
     icon: Icon(Icons.arrow_back,color:color ,size: 20,weight: 700),);
  }
}