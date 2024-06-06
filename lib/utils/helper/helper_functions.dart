import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHelperFunctions {
  // Colors
  static Color? getColor(String value) {
    if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Green") {
      return Colors.green;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } else if (value == "Brow") {
      return Colors.brown;
    } else if (value == "Teal") {
      return Colors.teal;
    } else if (value == "Indigo") {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackBar(BuildContext context, String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(content)),
    );
  }

  static void showAlert(BuildContext context, String title, String content) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("OK")),
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength){
    if(text.length <= maxLength){
      return text;
    }else{
      return "${text.substring(0,maxLength)}...";
    }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static String getFormattedDate(DateTime dateTime,{String format = "dd MM yyyy"}){
      return DateFormat(format).format(dateTime);
  }


  static List<T> removeDuplicate<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidget(List<Widget> widgets,int rowSize){
    final wrappedList = <Widget>[];
    for(var i = 0; i<widgets.length;i +=rowSize){
      final rowChildren = widgets.sublist(i,i+rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children:rowChildren));
    }
    return wrappedList;
  }

}
