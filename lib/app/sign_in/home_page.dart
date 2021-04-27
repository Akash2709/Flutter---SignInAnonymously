import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/services/auth.dart';

class HomePgae extends StatelessWidget {
  const HomePgae({Key key,@required this.auth}) : super(key: key);
  final AuthBase auth;

  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white
             ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
    );
  }
}

