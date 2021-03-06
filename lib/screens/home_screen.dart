import 'package:deliverit/blocs/authentication/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deliverit/screens/user_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double usingHeight = MediaQuery.of(context).size.height - statusBarHeight;

    double margin = 20;

    var questionStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text("Home Screen"),
              ),
              RaisedButton(
                onPressed: () {
                  BlocProvider.of<AuthenticationBloc>(context)
                      .dispatch(Logout());
                },
                child: Text("Logout"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserProfileScreen()),
                  );
                },
                child: Text("User Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
