import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home.dart';
import '/blocs/app_blocs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBlocs(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc Counter',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(),
      ),
    );
  }
}
