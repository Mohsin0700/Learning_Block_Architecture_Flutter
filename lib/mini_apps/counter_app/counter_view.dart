import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_block/mini_apps/counter_app/counter_cubit.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  final counterCubit = CounterCubit();

  @override
  void dispose() {
    super.dispose();
    counterCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.lime,
        actions: [
          BlocBuilder<CounterCubit, int>(
            bloc: counterCubit,
            builder: (context, count) => Container(
              margin: const EdgeInsets.only(right: 10),
              child: Badge.count(
                count: count,
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          bloc: counterCubit,
          builder: (context, count) {
            return Column(
              children: [
                Text('Changing From:', style: TextStyle(fontSize: 50)),
                Text(
                  counterCubit.currentState.toString(),
                  style: TextStyle(fontSize: 100),
                ),
                Text('To', style: TextStyle(fontSize: 50)),
                Text(
                  counterCubit.state.toString(),
                  style: TextStyle(fontSize: 100),
                ),
              ],
            );
          },
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
