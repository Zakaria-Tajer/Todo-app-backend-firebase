import 'package:firebase_todolist/constants/colors.dart';
import 'package:firebase_todolist/constants/days.dart';
import 'package:firebase_todolist/screens/bottom_navigator.dart';
import 'package:firebase_todolist/screens/todo_items.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int _selectedDayIndex = 0; // Track the index of the currently selected day
  bool _isSidebarVisible = false;
  bool _isSelected = false;
  void _updateSelection(bool isSelected) {
    setState(() {
      _isSelected = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BgColor,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              children: [
                searchBox(),
                const SizedBox(height: 20),
                SizedBox(height: 100, child: dayList()),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Days.daysList().length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedDayIndex =
                                index; // Update the selected day index
                          });
                        },
                        child: const TodoItems(),
                      );
                    },
                  ),
                ),
                // BottomNavigator()
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigator());
  }

  Widget dayList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Days.daysList().length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedDayIndex = index; // Update the selected day index
              });
            },
            child: Container(
              width: 100,
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index == _selectedDayIndex
                    ? Colors.blue
                    : bgGrey, // Highlight the selected day
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '${Days.daysList()[index].day}',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          );
        });
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: bgBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: bgGrey)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: BgColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isSidebarVisible = !_isSidebarVisible;
              });
            },
            child: Icon(null),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}
