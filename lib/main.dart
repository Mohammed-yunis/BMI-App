import 'package:flutter/material.dart';
import 'package:task_2/Home.dart';
import 'package:task_2/Login.dart';
import 'package:task_2/Sign_up.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BmiState();
  }
}

class BmiState extends State {
  int height = 140;
  int currentindex = 0;
  final List screantype = [const Home(), const Login(), const Sign_up()];
  final List appbar = ["Home", "Login", "Sign Up"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "Login",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.switch_account_outlined), label: "Sign Up")
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
            currentindex = index;
          },
        ),
        appBar: AppBar(
          title: Text(
            appbar[currentindex],
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        body: screantype[currentindex],
      ),
    );
  }
}
