import 'package:flutter/material.dart';
import 'package:learning_block/mini_apps/counter_app/counter_cubit.dart';

class CounterApp extends StatelessWidget {
  CounterApp({super.key});
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Text(
          counterCubit.state.toString(),
          style: TextStyle(fontSize: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterCubit.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
