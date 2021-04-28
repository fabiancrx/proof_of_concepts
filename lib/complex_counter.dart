import 'package:flt_navigation_service_example/complex_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComplexCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = context.read<ComplexViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Try getting the counter to -7 ,7 and 14"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<ComplexViewModel>(
              builder: (BuildContext context, value, Widget? child) {
                return Text('${value.counter}');
              },
            ),
          ],
        ),
      ),

      floatingActionButton: Wrap(
        children: [
          FloatingActionButton(
            onPressed: state.increment,
            heroTag: 'increment',
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: state.decrement,
                      heroTag: 'decrement',
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
