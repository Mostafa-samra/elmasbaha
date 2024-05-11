import 'package:flutter/material.dart';

class CenterImage extends StatelessWidget {
  const CenterImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image:
    
            /*    NetworkImage(
            "https://msbaha.com/wp-content/uploads/2020/12/20.png"), */
    
            AssetImage(
          "assets/images/5.png",
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}

