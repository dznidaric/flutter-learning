import 'package:flutter/material.dart';
import 'package:app_exercise/category.dart';
import 'package:app_exercise/form.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;
int _currentIndex = 0;

void main() {
  runApp(const UnitConverterApp());
}

Widget _body = Registration();
String _title = "";

void _onTap(index) {
  changeView(index);
}

void changeView(index) {
  _currentIndex = index;
  switch (index) {
    case 0:
      {
        _title = "Registracija";
        _body = Registration();
        break;
      }
    case 1:
      {
        break;
      }
  }
}

class UnitConverterApp extends StatelessWidget {
  const UnitConverterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mjenjač jedinica',
      home: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          backgroundColor: Colors.blue[100],
          body: _body,/* const Center(
            child: Category(
              name: _categoryName,
              color: _categoryColor,
              iconLocation: _categoryIcon,
            ), */
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add), label: ("Add")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart), label: ("View")),
            ],
            currentIndex: _currentIndex,
          )),
    );
  }
}
