import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final Color color;
  HomeWidget(this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class MessagesWidget extends StatelessWidget {
  final Color color;
  MessagesWidget(this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages Page'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final Color color;
  ProfileWidget(this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class AddWidget extends StatelessWidget {
  final Color color;
  AddWidget(this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Route'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}
