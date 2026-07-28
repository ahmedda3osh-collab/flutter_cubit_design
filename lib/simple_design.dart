import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_designe/feature/home/cubit/cubit/home_cubit.dart';
import 'package:simple_designe/feature/home/ui/home_screen.dart';

class SimpleDesign extends StatelessWidget {
  const SimpleDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
