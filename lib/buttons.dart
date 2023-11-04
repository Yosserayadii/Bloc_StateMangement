import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class ButtonColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            counterBloc.reset();
          },
          tooltip: 'Reset',
          child: Icon(Icons.restore),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
            counterBloc.decrement();
          },
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
            counterBloc.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
