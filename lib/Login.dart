import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State {
  bool visability = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Container(
        width: 350,
        height: 600,
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
            "assets/login.png",
            width: 120,
            height: 120,
          ),
          const SizedBox(height: 20),
          const Text(
            "User Login",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
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
                    borderSide: const BorderSide(width: 2, color: Colors.black),
                  ),
                  labelText: "Email",
                  labelStyle:
                      const TextStyle(fontSize: 30, color: Colors.white),
                  hintText: "jfhhfj@gmail.com",
                  hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
                  prefixIcon: const Icon(Icons.alternate_email_outlined),
                  ),
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
                      const TextStyle(fontSize: 30, color: Colors.white),
                  hintText: "123Qwert",
                  hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visability = !visability;
                        });
                      },
                      icon: Icon(
                        visability ? Icons.visibility : Icons.visibility_off,
                      ))),
              keyboardType: TextInputType.visiblePassword,
              obscureText: visability,
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
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ),
          const Text(
            "if you don't have account click in sign up",
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
