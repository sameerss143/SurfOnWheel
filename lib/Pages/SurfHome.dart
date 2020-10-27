import 'package:flutter/material.dart';

class SurfBoardHome extends StatefulWidget {
  SurfBoardHome({Key key}) : super(key: key);

  @override
  _SurfBoardHomeState createState() => _SurfBoardHomeState();
}

class _SurfBoardHomeState extends State<SurfBoardHome> {
  String _selectedBeach;

  String _selectedBoard;

  String _selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Rent Surf Board'),
      ),
      body: new ListView(
        children: [
          Text('Select the beach'),
          new DropdownButtonFormField<String>(
              value: _selectedBeach,
              items: <String>['Mumbai', 'Ratnagiri', 'Sindhudurga']
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
              items: <String>[
                'Short-Board',
                'Long-Board',
                'Soft-Board',
                'Body-Board',
              ]
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

  // List<DropdownMenuItem> getBeachList() {
  //   List<DropdownMenuItem> beachList = [];

  //   return beachList;
  //   //(child: null);
  // }
}
