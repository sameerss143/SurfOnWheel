import 'package:flutter/material.dart';

class PaddleBoardHome extends StatefulWidget {
  PaddleBoardHome({Key key}) : super(key: key);

  @override
  _PaddleBoardHomeState createState() => _PaddleBoardHomeState();
}

class _PaddleBoardHomeState extends State<PaddleBoardHome> {
  String _selectedBeach;

  String _selectedBoard;

  String _selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //child: null,
      appBar: new AppBar(
        title: Text('Rent Surf Board'),
      ),
      body: new ListView(
        children: [
          Text('Select the Lake'),
          new DropdownButtonFormField<String>(
              value: _selectedBeach,
              items: <String>['Mumbai', 'Thane', 'Ratnagiri', 'Sindhudurga']
                  .map((String e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (String newVal) {
                setState(() {
                  _selectedBeach = newVal;
                });
              }),
          Text('Select the surfboard'),
          new DropdownButtonFormField<String>(
              value: _selectedBoard,
              items: <String>['Hard-Board (SUP)', 'Inflatable-Board (iSUP)']
                  .map((String e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (String newVal) {
                setState(() {
                  _selectedBoard = newVal;
                });
              }),
          Text('Select Quantity'),
          new DropdownButtonFormField<String>(
              value: _selectedQuantity,
              items: <String>['1', '2', '3', '4', '5', '6']
                  .map((String e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (String newVal) {
                setState(() {
                  _selectedQuantity = newVal;
                });
              }),
          RaisedButton(
              child: Text('Place Order'),
              onPressed: () {
                //
              }),
        ],
      ),
    );
  }
}
