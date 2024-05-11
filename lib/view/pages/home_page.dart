import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../mesbaha_cubit/elmesbaha_cubit.dart';
import '../widget/add_button_with_positiond.dart';
import '../widget/center_image.dart';
import '../widget/reset_button_with_positiond.dart';
import '../widget/text_withe_positioned.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ElMesbahaCubit()..getCounter(),
      child: Scaffold(
        body: SafeArea(
            child: Center(
          child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            //  alignment: Alignment.center,
            child: const Stack(
              children: [
                CenterImage(),
                TextWithPositioned(),
                AddButtonWithPositiond(),
                ResetButtonWithPositiond(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
