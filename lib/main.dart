import 'package:flutter/material.dart';
import 'package:gmail_clone/mail_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var titleBarContent = "Primary";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: getMailDrawer(),
      appBar: AppBar(
        title: Text(
          titleBarContent,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 20.0),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.search,
              size: 25.0,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          backgroundColor: Colors.red,
          onPressed: () {}),
      body: ListView.builder(
          itemCount: MailGenerator.mailListLength,
          itemBuilder: (context, position) {
            MailContent mailContent = MailGenerator.getMailContent(position);
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 55.0,
                        color: Colors.red,
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  mailContent.sender,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 17.0),
                                ),
                                Text(
                                  mailContent.time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 17.0),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      mailContent.subject,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                          fontSize: 15.5),
                                    ),
                                    Text(
                                      mailContent.message,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                          fontSize: 15.5),
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 25.0,
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }

  Drawer getMailDrawer() {
    Text name = new Text(
      "Harry",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    Text email = new Text(
      "harry@gmail.com",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    var drawerIcons = [
      Icon(Icons.move_to_inbox),
      Icon(Icons.inbox),
      Icon(Icons.people),
      Icon(Icons.local_offer),
      Icon(Icons.star),
      Icon(Icons.access_time),
      Icon(Icons.label),
      Icon(Icons.send),
      Icon(Icons.send),
      Icon(Icons.note),
      Icon(Icons.mail),
      Icon(Icons.error),
      Icon(Icons.delete),
      Icon(Icons.label),
      Icon(Icons.label),
      Icon(Icons.settings),
      Icon(Icons.help),
    ];

    var drawerText = [
      "All inboxes",
      "Primary",
      "Social",
      "Promotions",
      "Starred",
      "Snoozed",
      "Important",
      "Sent",
      "Outbox",
      "Drafts",
      "All mail",
      "Spam",
      "Bin",
      "[Imap]/Sent",
      "[Imap]/Trash",
      "Settings",
      "Help & feedback"
    ];

    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            accountName: name,
            accountEmail: email,
            currentAccountPicture: Icon(
              Icons.account_circle,
              size: 50.0,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: drawerText.length,
                padding: EdgeInsets.only(top:0.0),
                itemBuilder: (context, position) {
                  return ListTile(
                    leading: drawerIcons[position],
                    title: Text(drawerText[position],
                        style: TextStyle(fontSize: 15.0)),
                    onTap: () {
                      this.setState(() {
                        titleBarContent = drawerText[position];
                      });
                      Navigator.pop(context);
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
