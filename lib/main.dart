import 'package:equtable_example_app/bloc/home_bloc.dart';
import 'package:equtable_example_app/bloc/home_event.dart';
import 'package:equtable_example_app/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const MaterialApp(
        home: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(ChangeNumberEvent());
            },
            child: const Text('Click the button'),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is InitialState) {
                return const Text('0');
              } else if (state is UpdateNumberState) {
                //
                // In this Line usage of Equtable package
                print('clicked');
                //
                return Text('${state.x}');
              } else {
                return const Text('error');
              }
            },
          )
        ],
      ),
    );
  }
}
