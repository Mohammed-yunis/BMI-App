import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Sign_upState();
  }
}

class Sign_upState extends State {
  bool visability = true;
  bool visability_2 = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Container(
        width: 350,
        height: 650,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0.0, 9.0),
                  blurRadius: 9,
                  color: Color.fromRGBO(0, 0, 205, 1))
            ],
            border: Border.all(color: const Color.fromRGBO(160, 158, 95, 1)),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            color: const Color.fromRGBO(124, 178, 222, 1)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/sign.png",
            width: 200,
            height: 50,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(width: 2, color: Colors.black),
                  ),
                  labelText: "First name",
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.white),
                  hintText: "Enter your fist name here",
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: const Icon(Icons.person)),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(width: 2, color: Colors.black),
                  ),
                  labelText: "Last name",
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.white),
                  hintText: "Enter your last name here",
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: const Icon(Icons.person)),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(width: 2, color: Colors.black),
                  ),
                  labelText: "Email",
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.white),
                  hintText: "jfhhfj@gmail.com",
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: const Icon(Icons.alternate_email)),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black)),
                  labelText: "Password",
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.white),
                  hintText: "123Qwert",
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visability = !visability;
                        });
                      },
                      icon: Icon(
                        visability ? Icons.visibility : Icons.visibility_off,
                      )),
                  prefixIcon: const Icon(Icons.password)),
              keyboardType: TextInputType.visiblePassword,
              obscureText: visability,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black)),
                  labelText: "Conform password",
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.white),
                  hintText: "123Qwert",
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visability_2 = !visability_2;
                        });
                      },
                      icon: Icon(
                        visability_2 ? Icons.visibility : Icons.visibility_off,
                      )),
                  prefixIcon: const Icon(Icons.password)),
              keyboardType: TextInputType.visiblePassword,
              obscureText: visability_2,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ),
          const Text(
            "already have account? Login",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Image.asset(
                      "assets/googal.webp",
                      width: 20,
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Text(
                        "Google",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),

                  ])),
              const SizedBox(
                width: 10,
              ),
              MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: const [
                    Icon(Icons.facebook),
                    Text(
                      "Facebook",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ])),
            ],
          ),
        ]),
      ),
    ));
  }
}
