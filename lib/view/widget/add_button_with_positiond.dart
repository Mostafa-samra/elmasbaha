import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mesbaha_cubit/elmesbaha_cubit.dart';
import 'coustem_button.dart';

class AddButtonWithPositiond extends StatelessWidget {
  const AddButtonWithPositiond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 33,
      right: -10,
      // top: MediaQuery.of(context).size.height / 2 + 25,
      child: BlocBuilder<ElMesbahaCubit, ElMesbahaState>(
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CoustemButton(
              radius: 68,
              onPressed: () {
                BlocProvider.of<ElMesbahaCubit>(context).addCounter();
              },
            ),
          );
        },
      ),
    );
  }
}
