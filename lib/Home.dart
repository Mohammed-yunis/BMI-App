import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  double height = 160;
  int weight = 40;
  int age = 11;
  var Co_Color = const Color.fromRGBO(124, 178, 222, 1);
  var co_color = const Color.fromRGBO(124, 178, 222, 1);
  var Gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    Gender = "Male";
                    Co_Color = const Color.fromRGBO(40, 230, 250, 1);
                    co_color = const Color.fromRGBO(124, 178, 222, 1);
                  });
                },
                height: double.infinity,
                minWidth: double.infinity,
                color: Co_Color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.male,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    Gender = "Female";
                    co_color = const Color.fromRGBO(40, 230, 250, 1);
                    Co_Color = const Color.fromRGBO(124, 178, 222, 1);
                  });
                },
                height: double.infinity,
                minWidth: double.infinity,
                color: co_color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.female,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            )),
          ],
        )),
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0.0, 9.0),
                  blurRadius: 9,
                  color: Color.fromRGBO(0, 0, 205, 1))
            ],
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(124, 178, 222, 1),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Height",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "${height.toInt()} cm",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Slider(
                value: height,
                onChanged: (double x) {
                  setState(() {
                    height = x;
                  });
                },
                min: 140,
                max: 200,
                divisions: 60,
              )
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0.0, 9.0),
                          blurRadius: 9,
                          color: Color.fromRGBO(0, 0, 205, 1))
                    ],
                    color: const Color.fromRGBO(124, 178, 222, 1),
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Weight",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "$weight",
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton(
                            heroTag: 'btn1',
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                              heroTag: 'btn2',
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const Icon(Icons.add)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0.0, 9.0),
                        blurRadius: 9,
                        color: Color.fromRGBO(0, 0, 205, 1))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(124, 178, 222, 1),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "$age",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: FloatingActionButton(
                              heroTag: 'btn3',
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                          ),
                          Expanded(
                            child: FloatingActionButton(
                              heroTag: 'btn4',
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        )),
        Builder(builder: (context) {
          return MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      "Bmi Result",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
                  body: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 400,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0.0, 9.0),
                                blurRadius: 9,
                                color: Color.fromRGBO(0, 0, 205, 1))
                          ],
                          border: Border.all(
                              color: const Color.fromRGBO(160, 158, 95, 1)),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: const Color.fromRGBO(124, 178, 222, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Your Gender is : $Gender",
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Your Bmi is : ${weight ~/ ((height / 100) * (height / 100))}",
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Your Age is : $age",
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/bmi.png",
                            width: 350,
                            height: 270,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }));
            },
            minWidth: 300,
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: const Text(
              "Calculate",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          );
        }),
        MaterialButton(
          onPressed: () {
            setState(() {
              height = 160;
              weight = 40;
              age = 11;
              Co_Color = const Color.fromRGBO(124, 178, 222, 1);
              co_color = const Color.fromRGBO(124, 178, 222, 1);
              Gender = "Male";
            });
          },
          minWidth: 300,
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
          child: const Text(
            "Reload",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
