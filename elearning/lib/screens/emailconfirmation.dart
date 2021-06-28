import 'package:flutter/material.dart';
import 'thanks.dart';

class CONFIRMATION extends StatefulWidget {
  const CONFIRMATION({Key? key}) : super(key: key);

  @override
  _CONFIRMATIONState createState() => _CONFIRMATIONState();
}

class _CONFIRMATIONState extends State<CONFIRMATION> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thanks for Registering'),
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
                Icons.mail,
                size: 150.0,
              ),

              Container(
                //padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  children: [
                    //Icon(Icons.thumb_up),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                      child: Text(
                        "Check your inbox, an email has been sent to,\n"
                            " you.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //fontSize: 15.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 50),
                child: Text(
                  "It contains easy instructions to complete your registration.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                        builder: (context) => THANKS(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Continue",
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
