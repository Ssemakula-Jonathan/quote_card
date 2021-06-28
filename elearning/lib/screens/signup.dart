import 'package:elearning/screens/emailconfirmation.dart';
import 'package:elearning/screens/login.dart';
import 'package:elearning/screens/thanks.dart';
import "package:flutter/material.dart";

class SIGNUP extends StatefulWidget {
  const SIGNUP({Key? key}) : super(key: key);

  @override
  _SIGNUPState createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  String _country = 'Select your country';
  String _education = 'Select your Level of Education';
  String _class = 'Select your class';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create An Account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/elearning.jpg'),
                radius: 80.0,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 300.0,
              //height: 45.0,
              child: Column(
                children: [
                  TextFormField(
                    //maxLength: 15,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(8.0),
                        ),
                      ),
                      filled: true,
                      labelText: 'Username',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 300.0,
              //height: 45.0,
              child: Column(
                children: [
                  TextFormField(
                    //maxLength: 15,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(8.0),
                        ),
                      ),
                      filled: true,
                      labelText: 'Email',
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Container(
                    //color: Colors.grey,
                    height: 60.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade900,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _country,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 50.0,
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _country = newValue!;
                          });
                        },
                        items: <String>[
                          'Select your country',
                          'Uganda',
                          'Kenya',
                          'Tanzania',
                          'Rwanda',
                          'Burundi',
                          'South Sudan',
                          'Congo'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Container(
                    //color: Colors.grey,
                    height: 60.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade900,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _education,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 50.0,
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _education = newValue!;
                          });
                        },
                        items: <String>[
                          'Select your Level of Education',
                          'Pre-School',
                          'Primary',
                          "O'level",
                          "A'level",
                          'Institution/College',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    //color: Colors.grey,
                    height: 60.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade900,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _class,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 50.0,
                        ),
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _class = newValue!;
                          });
                        },
                        items: <String>[
                          'Select your class',
                          'Kindergatten',
                          'Nursery',
                          'P.1',
                          'P.2',
                          'P.3',
                          'P.4',
                          'P.5',
                          'P.6',
                          'P.7',
                          'P.8',
                          'S.1',
                          'S.2',
                          'S.3',
                          'S.4',
                          'S.5',
                          'S.6',

                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    //height: 45.0,
                    child: Column(
                      children: [
                        TextFormField(
                          //maxLength: 15,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0),
                              ),
                            ),
                            filled: true,
                            labelText: 'City or Town',
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    width: 300.0,
                    //height: 45.0,
                    child: Column(
                      children: [
                        TextFormField(
                          //maxLength: 15,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0),
                              ),
                            ),
                            filled: true,
                            labelText: 'Password',
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    width: 300.0,
                    //height: 45.0,
                    child: Column(
                      children: [
                        TextFormField(
                          //maxLength: 15,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0),
                              ),
                            ),
                            filled: true,
                            labelText: 'Re-enter Password',
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    width: 300.0,
                    height: 60.0,

                    //color: Colors.grey,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CONFIRMATION(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Create My Account",
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

            SizedBox(height: 15.0,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    width: 150.0,
                    child: Text("Already have an Account?"),
                  ),

                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LOGIN(),
                        ),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.0,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    width: 150.0,
                    child: Text("Forgot Password?"),
                  ),

                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LOGIN(),
                        ),
                      );
                    },
                    child: Text("Reset Password"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
