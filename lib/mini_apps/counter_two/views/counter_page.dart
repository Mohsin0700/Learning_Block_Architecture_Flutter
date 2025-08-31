import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_block/mini_apps/counter_two/cubits/counter_cube.dart';
import 'package:learning_block/mini_apps/counter_two/views/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterCube(), child: CounterView());
  }
}
