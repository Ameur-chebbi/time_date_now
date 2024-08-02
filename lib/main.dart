
import 'package:flutter/material.dart';
import "dart:async";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
      home: DateApp(),
    );
  }
}
class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  String hour = "";
  String year = " " ;
  String day = " " ;
  String month = " " ;
  String sec ="" ;
  String min="" ;
  String weekday ="";
   String msg="Have a good 🤞 ";

 everysec(){
  Timer.periodic(Duration(seconds: 1), (timer) {
  setState(() {
    year=(DateTime.now().year.toString());
    day=(DateTime.now().day.toString());
     switch (day) {
          case "1":
            weekday = "monday";
            break;

          case "2":
            weekday= "thursday";
            break;

          case "3":
            weekday = "wednesday";
            break;
            case "4":
            weekday = "Thursday";
            break;
            case "5":
             weekday = "Friday";
            break;
            case "6":
             weekday = "Saturday";
            break;
            case "7":
             weekday = "Sunday";
            break;
        }

    month=(DateTime.now().month.toString());
    switch (month) {
          case "1":
            month = "January";
            break;

          case "2":
            month = "Feb";
            break;

          case "3":
            month = "March";
            break;
            case "4":
            month = "April";
            break;
            case "5":
            month = "May";
            break;
            case "6":
            month = "June";
            break;
            case "7":
            month = "July";
            break;
            case "8":
            month = "August";
            break;
            case "9":
            month = "September";
            break;
            case "10":
            month = "October";
            break;
            case "11":
            month = "November";
            break;
             case "12":
            month = "December";
            break;
        }
    hour=(DateTime.now().hour.toString());
    min=(DateTime.now().minute.toString());
    sec=(DateTime.now().second.toString());
    
  
  });
});
 }

 onetime() {
  setState(() {
    Timer(Duration(seconds: 3), () {
print("$msg");
});
  });
 }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     everysec() ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Time & Date ",
         style: TextStyle(fontSize: 27, color: Colors.white),) ,
          backgroundColor: Color.fromARGB(255, 57, 73, 80),
      ),
       backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("today's date is  $weekday " ,style: TextStyle(fontSize: 27,color: Colors.white),),
            SizedBox(
              height: 27,
            ),
                        Text("$month- $day- $year " ,style: TextStyle(fontSize: 27,color: Colors.white),),
            SizedBox(
              height: 27,
            ),
                        Text("${hour.padLeft(2,"0")}:${min.padLeft(2,"0")}:${sec.padLeft(2,"0")}" ,style: TextStyle(fontSize: 27,color: Colors.white),),
            SizedBox(
              height: 27,
            ),
            Text("$msg" ,style: TextStyle(fontSize: 27,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}