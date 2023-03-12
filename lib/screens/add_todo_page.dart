import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:firebase_todolist/constants/colors.dart';
import 'package:firebase_todolist/screens/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  String? _selectedValue;
  int tag = 1;
  List<String> tags = [];
  List<String> options = ['Normal', 'Medieum', 'High'];
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  void _getTag(int value) {
    setState(() {
      tag = value;
    });

    print('tag: $value');
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: BgColor,
        title: const Text(
          'Add todo',
          style: TextStyle(
            fontWeight: FontWeight.w500, // Add bold font weight to the text
            fontSize: 24, // Set the font size to 20 pixels
            color: Colors.black, // Set the text color to black
          ),
        ),
        centerTitle: true, // Center the title horizontally
        // backgroundColor: Colors.white, // Set the background color of the AppBar
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Write Here',
                    hintStyle: TextStyle(color: bgGrey, fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ChipsChoice.single(
                    value: tag,
                    onChanged: (value) => _getTag(value),
                    choiceItems: C2Choice.listFrom(
                      source: options,
                      value: (i, v) => i,
                      label: (i, v) => v,
                    ),
                    choiceActiveStyle: const C2ChoiceStyle(
                        color: Color(0xFF36A8F4),
                        borderColor: Color(0xFF36A8F4),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    choiceStyle: const C2ChoiceStyle(color: Color(0xFF1C1C1C)),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Select date'),
                ),
                SizedBox(height: 20.0),
                Text(
                  _selectedDate == null
                      ? 'No date selected.'
                      : 'Selected date: ${_selectedDate.toString()}',
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: Text('Select time'),
                ),
                SizedBox(height: 20.0),
                Text(
                  _selectedTime == null
                      ? 'No time selected.'
                      : 'Selected time: ${_selectedTime?.format(context)}',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
