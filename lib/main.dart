import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_block/mini_apps/counter_app/counter_cubit.dart';
// import 'package:learning_block/mini_apps/counter_app/counter_view.dart';
import 'package:learning_block/mini_apps/counter_two/counter.dart';
import 'package:learning_block/mini_apps/counter_two/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  // runApp(const MyApp());
  runApp(Counter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: BlocProvider(create: (_) => CounterCubit(), child: CounterApp()),
      home: BlocProvider(create: (_) => CounterCubit(), child: Counter()),
    );
  }
}
