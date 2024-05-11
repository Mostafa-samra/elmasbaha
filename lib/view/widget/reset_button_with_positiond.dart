import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../mesbaha_cubit/elmesbaha_cubit.dart';
import 'coustem_button.dart';

class ResetButtonWithPositiond extends StatelessWidget {
  const ResetButtonWithPositiond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 140,
      left: 65,
      child: BlocBuilder<ElMesbahaCubit, ElMesbahaState>(
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CoustemButton(
              radius: 5,
              onPressed: () {
                BlocProvider.of<ElMesbahaCubit>(context).resetCounter();
              },
            ),
          );
        },
      ),
    );
  }
}
