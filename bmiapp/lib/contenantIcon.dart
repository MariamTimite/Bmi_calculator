import 'package:flutter/material.dart';

class ContenantIcon extends StatelessWidget {
ContenantIcon({this.icon, this.label});

 final IconData icon;
 final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(
        icon,
         size: 60),
      SizedBox(
       height: 10,
      ),

      Text(label, style: TextStyle(fontSize:30 , color: Colors.white),)
    ],
    
    
    );
  }
}