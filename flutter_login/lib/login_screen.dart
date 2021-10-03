import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static get routeName => '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
            mobile: buildLoginMain(context),
            tablet: buildLoginMain(context),
            desktop: Row(children: [
              Expanded(
                flex: 2,
                child: buildLoginMain(context),
              ),
              Expanded(flex: 4, child: buildRightBackground(context)),
            ])));
  }

  Widget buildRightBackground(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroud.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null);
  }

  Widget buildLoginMain(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: SizedBox(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/images/flutter-logo.png')),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(children: const [
              Text(
                'Hello',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Please login your account.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  labelText: 'Email Address',
                  hintText: 'Enter the email address!'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: 'Enter password'),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(children: const <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black87,
                        radius: 8,
                        child: Icon(Icons.done, size: 10, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Remember me',
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(children: const <Widget>[
                      Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      )
                    ]),
                  ),
                ],
              )),
          Container(
            height: 50,
            width: 250,
            margin: const EdgeInsets.only(top: 80),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              'Register Now',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0, color: Colors.green),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 70),
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'By Signing up, you agree with our ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.0, color: Colors.black),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'Terms & Condidtions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
