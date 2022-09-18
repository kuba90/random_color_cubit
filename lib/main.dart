/* External dependencies*/
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies*/
import '/cubit/color_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorCubit(),
        child: BlocBuilder<ColorCubit, ColorState>(
          builder: (context, state) {
            return Container(
              color: state.color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      bottom: 50,
                    ),
                    child: FloatingActionButton(
                      elevation: 0,
                      child: const Icon(Icons.colorize),
                      onPressed: () {
                        context.read<ColorCubit>().changeColor();
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
