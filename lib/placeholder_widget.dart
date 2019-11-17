import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: feedModel.dummyData.length,
          itemBuilder: (context, index) {
            feedModel _model = feedModel.dummyData[index];
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
                        width: 4.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 35.0,
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
  final String _fullName = "Nick Frost";
//  final String _status = "Software Developer";
  final String _bio =
      "\"Hi, I am a sophomore at Cal Poly.\nCome for a grocery run with me!\"";
  final String _followers = "173";
  final String _posts = "24";
//  final String _scores = "450";

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 3.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/prof.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
//      child: Text(
//        _status,
//        style: TextStyle(
//          fontFamily: 'Spectral',
//          color: Colors.black,
//          fontSize: 20.0,
//          fontWeight: FontWeight.w300,
//        ),
//      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Friends", _followers),
          _buildStatItem("Posts", _posts),
//          _buildStatItem("Scores", _scores),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400,//try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Get in Touch with ${_fullName.split(" ")[0]},",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("followed"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xFF404A5C),
                ),
                child: Center(
                  child: Text(
                    "FRIEND",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: InkWell(
              onTap: () => print("Message"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "MESSAGE",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 6.4),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  _buildStatContainer(),
                  _buildBio(context),
                  _buildSeparator(screenSize),
                  SizedBox(height: 10.0),
                  _buildGetInTouch(context),
                  SizedBox(height: 8.0),
                  _buildButtons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool driver;
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
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'First Name Last Name',
                        labelText: 'Name'
                    ),
                    onSaved: (String value)
                    {
                      //this._data.email = value;
                    },
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                          hintText: 'ex: Trader Joes',
                          labelText: 'Store'
                      ),
                      onSaved: (String value)
                      {
                        //this._data.email = value;
                      }
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: new InputDecoration(
                          hintText: 'ex: 11/16/2019',
                          labelText: 'Date: '
                      ),
                      onSaved: (String value)
                      {
                        //this._data.email = value;
                      }
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: new InputDecoration(
                          hintText: 'ex: 3:00 pm',
                          labelText: 'Time: '
                      ),
                      onSaved: (String value)
                      {
                        //this._data.email = value;
                      }
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          hintText: 'ex: 3',
                          labelText: 'Seats Avaliable: '
                      ),
                      onSaved: (String value) {
                        //this._data.password = value;
                      }
                  ),
                  new TextFormField(
                      keyboardType: TextInputType.multiline,
                      decoration: new InputDecoration(
                          hintText: '',
                          labelText: 'Message: '
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
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeWidget()),
                        );
                      },

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

class feedModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  feedModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<feedModel> dummyData = [
    feedModel(
      avatarUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Target_Corporation_logo_%28vector%29.svg/1200px-Target_Corporation_logo_%28vector%29.svg.png",
      name: "Target -",
      datetime: "Tuesday, 1:30pm",
      message: "4 Seats Available",
    ),
    feedModel(
      avatarUrl: "https://media.licdn.com/dms/image/C4D0BAQFgmh2pajt3jQ/company-logo_200_200/0?e=2159024400&v=beta&t=PvgNnkl06fFOyEuieerGDaPk9Gk7xZLaXit4ePzszhs",
      name: "Costco -",
      datetime: "Tuesday, 4:00pm",
      message: "3 Seats Available",
    ),
    feedModel(
      avatarUrl: "http://logo-load.com/uploads/posts/2016-08/trader-joes-logo.png",
      name: "Trader Joe's -",
      datetime: "Tuesday, 5:45pm",
      message: "1 Seat Available",
    ),
    feedModel(
      avatarUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Target_Corporation_logo_%28vector%29.svg/1200px-Target_Corporation_logo_%28vector%29.svg.png",
      name: "Target -",
      datetime: "Wednesday, 7:35pm",
      message: "4 Seats Available",
    ),
    feedModel(
      avatarUrl: "https://media.licdn.com/dms/image/C4D0BAQFgmh2pajt3jQ/company-logo_200_200/0?e=2159024400&v=beta&t=PvgNnkl06fFOyEuieerGDaPk9Gk7xZLaXit4ePzszhs",
      name: "Costco -",
      datetime: "Wednesday, 08:15pm",
      message: "2 Seats Available",
    ),
  ];
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