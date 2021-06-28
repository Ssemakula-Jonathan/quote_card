import 'package:flutter/material.dart';
import 'signup.dart';

class LOGIN extends StatefulWidget {
  const LOGIN({Key? key}) : super(key: key);

  @override
  _LOGINState createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/elearning.jpg'),
                radius: 80.0,
              ),

              Container(
                width: 300.0,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Student Number',
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),

              SizedBox(height: 20.0,),
              Container(
                width: 200.0,
                child: Row(
                  children: [
                    Checkbox(
                        value: _checkbox,
                        onChanged: (value){
                          setState(() {
                            _checkbox = true;
                          });
                        }),
                    Text("Remember me"),
                  ],
                ),
              ),

              Container(
                width: 300.0,
                height: 45.0,

                //color: Colors.grey,
                child: ElevatedButton(
                  onPressed: (){
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
                  ),
                ),
              ),

              TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SIGNUP(),
                      ),
                    );
                  },
                  child: Text("Create new account"),
              ),

              Text(
                  "OR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextButton(
                onPressed: (){},
                child: Text("Forgot student number or Password?"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
