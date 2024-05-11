import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mesbaha_cubit/elmesbaha_cubit.dart';




class Textwidget extends StatelessWidget {
  const Textwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElMesbahaCubit, ElMesbahaState>(
      builder: (context, state) {
        ElMesbahaCubit cubit = BlocProvider.of<ElMesbahaCubit>(context);
        return Text(
          cubit.counter.toString(),
          style: const TextStyle(fontSize: 60),
        );
      },
    );
  }
}
