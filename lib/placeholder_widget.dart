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
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                  },
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  trailing: Icon(
                    Icons.message,
                    size: 24.0,
                  ),
                ),
              ],
            );
          },
        ),
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

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lauren"),
      ),
      body: Center(
         child: ListView.builder(
          itemCount: InfoModel.dummyData.length,
          itemBuilder: (context, index) {
            InfoModel _model = InfoModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                  },
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.phoneNumber),
                      SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Lauren",
      datetime: "8:18pm",
      message: "Don't Forget to bring your bags",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Tracy",
      datetime: "11:22am",
      message: "Do you have a Costco card??",
    ),
    ChatModel(
      avatarUrl: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iKIWgaiJUtss/v2/1000x-1.jpg",
      name: "Claire",
      datetime: "1:34pm",
      message: "Works for me :)",
    ),
    ChatModel(
      avatarUrl: "https://i.kym-cdn.com/photos/images/newsfeed/001/561/356/734.jpg",
      name: "Joe",
      datetime: "11:05am",
      message: "Have a great weekend!!",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Mark",
      datetime: "09:46pm",
      message: "I'll meet you at checkout.",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "William",
      datetime: "08:15pm",
      message: "Hey! Are you still able to take me to Trader Joe's tomorrow??",
    ),
  ];
}

class InfoModel {
  final String avatarUrl;
  final String message;
  final String phoneNumber;

  InfoModel({this.avatarUrl, this.message, this.phoneNumber});

  static final List<InfoModel> dummyData = [
    InfoModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      message: "Please reach out to me through my phone number above!",
      phoneNumber: "816-529-6697",
    ),
  ];
}