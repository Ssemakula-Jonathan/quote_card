import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/elearning.jpg'),
                radius: 80.0,
              ),
              SizedBox(height: 70.0),

              Container(
                width: 300.0,
                height: 45.0,

                //color: Colors.grey,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LOGIN(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                        "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        ),
                    ),

                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                height: 45.0,

                //color: Colors.grey,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SIGNUP(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
