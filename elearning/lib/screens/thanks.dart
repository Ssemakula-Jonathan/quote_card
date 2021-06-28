import 'package:elearning/screens/login.dart';
import 'package:flutter/material.dart';

class THANKS extends StatefulWidget {
  const THANKS({Key? key}) : super(key: key);

  @override
  _THANKSState createState() => _THANKSState();
}

class _THANKSState extends State<THANKS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the E-Learning'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              /*SizedBox(height: 20.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/elearning.jpg'),
                radius: 80.0,
              ),*/

              SizedBox(height: 70.0,),
              Icon(
                  Icons.check_circle_rounded,
                size: 150.0,
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up),

                    Center(
                        child: Text(
                            "Thanks, Jonathan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.0,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 50),
                child: Text("Your registration has been confirmed."
                    "Your student number is 21/UGA/001, use it for logging in to your account."),
              ),

              Container(
                width: 300.0,
                height: 50.0,

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
                      "Continue to login",
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

                    //backgroundColor: MaterialStateProperty.all(Colors.grey),
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
