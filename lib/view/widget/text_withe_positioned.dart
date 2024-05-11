
import 'package:flutter/material.dart';

import 'text_widget.dart';

class TextWithPositioned extends StatelessWidget {
  const TextWithPositioned({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      //   left: MediaQuery.of(context).size.width / 3,
      // top: 190,
      child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: const Textwidget()),
    );
  }
}
