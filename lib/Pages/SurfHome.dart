import 'package:flutter/material.dart';

class SurfBoardHome extends StatefulWidget {
  SurfBoardHome({Key key}) : super(key: key);

  @override
  _SurfBoardHomeState createState() => _SurfBoardHomeState();
}

class _SurfBoardHomeState extends State<SurfBoardHome> {
  String _selectedDistrict;

  String _selectedBeach;

  String _selectedBoard;

  String _selectedQuantity;

  DateTime _selectedDate = DateTime.now();

  TimeOfDay _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Rent Surf Board'),
      ),
      body: new ListView(
        children: [
          //Select district/city
          Text('Select District/City'),
          new DropdownButtonFormField<String>(
            value: _selectedDistrict,
            items: <String>[
              'Mumbai',
              //'Thane',
              'Palghar',
              'Raigad',
              'Ratnagiri',
              'Sindhudurga',
            ]
                .map((String e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (String newVal) {
              setState(
                () {
                  _selectedDistrict = newVal;
                },
              );
            },
          ),

          Text('Select Beach'),
          new DropdownButtonFormField<String>(
            value: _selectedBeach,
            items: <String>[
              //palghar
              'Dahanu',
              'Nargol',
              //Mumbai
              'Girgaon',
              //Raigad
              'Kihim',
              'Alibaug',
              'Akshi',
              'Nagaon',
              'Kashid',
              'Nandgaon',
              'Diveagar',
              'Shriwardhan',
              'Harihareshwar',
              'Murud',
              //Ratnagiri
              'Guhagar',
              'Palshet',
              'Velneshwar',
              'Kunbiwadi',
              'Nandivade',
              'Velneshwar',
              'Kunbiwadi',
              'Nandivade',
              'Ganpatipule',
              'Bhandarpule',
              'Advika',
              'Ware',
              'Aare ware',
              'Mirya',
              'Ganeshgule',
              'Ambolgad',
              //Sindhudurga
              'Devgad',
              'Mithmumbri',
              'Kunkeshwar',
              'Tambaldeg',
              'Achara',
              'Malvan',
              'Chiwla',
              'Dandi',
              'Tarkarli',
              'Devbag',
              'Nivati',
              'Vengurla',
              'Shiroda'
            ]
                .map((String e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (String newVal) {
              setState(
                () {
                  _selectedBeach = newVal;
                },
              );
            },
          ),

          Text('Select Surfboard Type'),
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
          //date picker
          //DatePickerEntryMode.calendar
          Text(
              //'Select Date: ${DateFormat('yyyy-MMM-DD').format(_selectedDate).toString()}'),
              'Select Date: ${_selectedDate.toString().substring(0, 10)}'),
          //DateInputElement(),
          RaisedButton.icon(
            onPressed: () {
              setState(() {
                //_selectedDate =
                _selectDate(context);
              });
            },
            icon: Icon(Icons.calendar_today),
            label: Text('Change Date'),
          ),

          //select time
          Text('Select Start Time: ${_selectedTime.toString()}'),

          RaisedButton.icon(
            onPressed: () {
              setState(() {
                _selectTime(context);
              });
            },
            icon: Icon(Icons.timer),
            label: Text('Start Time'),
          ),
          //showTimePicker(context: context, initialTime: null),
//select time
          Text('Select End Time'),

          RaisedButton.icon(
            onPressed: () {
              setState(() {
                _selectTime(context);
              });
            },
            icon: Icon(Icons.timer),
            label: Text('End Time'),
          ),
          RaisedButton(
            child: Text('Place Order'),
            onPressed: () {
              //Submit order to firestore
            },
          ),
        ],
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    //DateTime maxDate = DateTime.now().add(Duration.)
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: currentDate,
      lastDate: DateTime(2021),
      //currentDate.add(Duration.hoursPerDay), //currentDate.add(),
    );

    if (_datePicker != null && _datePicker != currentDate) {
      setState(
        () {
          _selectedDate = _datePicker;
        },
      );
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    //DateTime maxDate = DateTime.now().add(Duration.)
    TimeOfDay _timePicker = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(currentDate),
      //currentDate.add(Duration.hoursPerDay), //currentDate.add(),
    );

    if (_timePicker != null) {
      //&& _timePicker != currentDate) {
      setState(() {
        _selectedTime = _timePicker;
      });
    }
  }
  // List<DropdownMenuItem> getBeachList() {
  //   List<DropdownMenuItem> beachList = [];

  //   return beachList;
  //   //(child: null);
  // }
}
