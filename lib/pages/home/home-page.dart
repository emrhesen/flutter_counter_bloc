import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/bloc/counter/counter-bloc.dart';
import 'package:flutter_counter_bloc/bloc/counter/counter-state.dart';

class HomePage extends StatelessWidget {
  final String title;

  final _counterBloc = CounterBloc();

  HomePage({this.title}) {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      builder: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              BlocBuilder(
                bloc: _counterBloc,
                builder: (context, CounterState counterState) {
                  return Text(
                    '${counterState.counter.toString()}',
                    style: TextStyle(color: Colors.red.shade600, fontSize: 61),
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                _counterBloc.IncrementCounter();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                _counterBloc.DecrementCounter();
              },
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
  }
}
