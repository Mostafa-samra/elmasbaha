import 'package:flutter/material.dart';

class CoustemButton extends StatelessWidget {
  const CoustemButton({
    super.key,
    this.onPressed,
    required this.radius,
  });
  final void Function()? onPressed;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.fromRadius(radius)),
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor:
            // MaterialStateProperty.all(Colors.red),
            MaterialStateProperty.all(Colors.transparent), 
       /*  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return Colors.transparent; 
        }), */
      ),
      child: const Text(""),
    );
  }
}

