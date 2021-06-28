import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                    'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[800],
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                  ),

                ),
              ),
            ),

            SizedBox(height: 25.0),
            Container(
              width: 35
              0.0,
              height: 39.0,
              child: TextFormField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(18.0),
                    ),
                  ),
                  filled: true,
                  hintText: "Email",
                  //fillColor: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 10.0),
            Container(
              width: 350.0,
              height: 39.0,
              child: TextFormField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(18.0),
                    ),
                  ),
                  filled: true,
                  hintText: "Password",
                  //fillColor: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Container(
              width: 350.0,
              height: 39.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),

              ),
            ),

            SizedBox(height: 50.0),
            Text("Don't have an account?"),

            TextButton(
                onPressed: () {},
                child: Text('Create Account'),
            ),

            SizedBox(height: 50.0),
            Center(
              child: Container(
                child: (
              Text('Welcome Vendor')
                ),
              ),
            ),

            SizedBox(height: 30.0),
            Row(
              children: [
                SizedBox(width: 10.0,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('All Items'),
                  ),
                ),

                SizedBox(width: 50.0,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Out of stock'),
                  ),
                ),

              ],
            ),

            SizedBox(height: 30.0),
            Center(
              child: Container(
                child: (
                    Text('Add New')
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Upload'),
                  ),
                ),

                Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Upload'),
                  ),
                ),

                Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Upload'),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0,),
            Row(
              children: [
                Text(
                    "Category",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                  ),
                ),

                /*TextField(
                  decoration: InputDecoration(
                    hintText: 'Fruits & Vegetables',
                  ),
                ),*/

              ],
            ),
          ],

        ),
      ),
    );
  }
}
