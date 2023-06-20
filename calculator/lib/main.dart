import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primaryColor: Colors.pink),
      home: Calculator(),
    ));

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var _operation = ['Add', 'sub', 'div', 'mul'];
  var _values;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        appBar: AppBar(
          title: Text('calculator'),
        ),
        body: ListView(
          children: <Widget>[
            DropdownButton<String>(
              items: _operation.map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _values = value;
                  print("value changed to $value");
                });
                value = _values;
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Third Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
            Text("..."),
            Row(
              children: <Widget>[],
            )
          ],
        ));
  }
}
