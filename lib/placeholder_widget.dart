import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class MessagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        //Add Code Here
      ),
    );
  }
}

class AddWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Trip'),
      ),
      body: Center(
        child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Form(
              key: this._formKey,
              child: new ListView(
                children: <Widget>[
                  new TextFormField(
                      keyboardType: TextInputType.text, // Use email input type for emails.
                      decoration: new InputDecoration(
                          hintText: 'Firstname Lastname',
                          labelText: 'Name'
                      ),
                      onSaved: (String value)
                      {
                        //this._data.email = value;
                      }
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.number, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'ex: \$10',
                          labelText: 'Price: '
                      ),
                      onSaved: (String value) {
                        //this._data.password = value;
                      }
                  ),

                  new Container(
                    child: new RaisedButton(
                      child: new Text(
                        'Post',
                        style: new TextStyle(
                            color: Colors.white
                        ),
                      ),
                      //onPressed: this.submit,
                      color: Colors.blue,
                    ),
                    margin: new EdgeInsets.only(
                        top: 20.0
                    ),
                  )
                ],
              ),
            )
        ),
        //Add Code Here
      ),
    );
  }
}
