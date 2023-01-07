import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'welcome_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;
User? loggedInUser;

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  late String messageText;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;

      if (user != null) {
        loggedInUser = user;
      }
    }
    catch(e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.popUntil(context, ModalRoute.withName(WelcomeScreen.id));
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('messages').add(
                          {
                            'text': messageText,
                            'sender': loggedInUser?.email,
                            'createdAt': Timestamp.now()
                          }
                      );
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
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

class _MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('messages').orderBy('createdAt', descending: true).snapshots(),
      builder: (context, snapshot){
        List<_MessageBubble> messageWidgets = [];

        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final messages = snapshot.data!.docs;
        for(var message in messages){
          final messageText = message['text'];
          final messageSender = message['sender'];
          final currentUser = loggedInUser?.email;

          final messageWidget = _MessageBubble(
            text: messageText,
            sender: messageSender,
            isMe: currentUser == messageSender,
          );

          messageWidgets.add(messageWidget);
        }

        return Expanded(
          child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
              children: messageWidgets
          ),
        );
      },
    );
  }
}


class _MessageBubble extends StatelessWidget {
  _MessageBubble({
    required this.text,
    required this.sender,
    required this.isMe
  });

  final String text;
  final String sender;
  final bool isMe;

  BorderRadius _bubbleBorder(double topLeftValue, double topRightValue){
    return BorderRadius.only(
        topLeft: Radius.circular(topLeftValue),
        topRight: Radius.circular(topRightValue),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54
            ),
          ),
          Material(
            borderRadius: isMe ? _bubbleBorder(30, 0) : _bubbleBorder(0, 30),
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
              child: Text(
                '$text',
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black54,
                  fontSize: 15.0
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
