import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatsScreen extends StatefulWidget {
  static const String routeName = "chats";
  static const String routeURL = "/chats";

  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Direct Messages"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.plus,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: NetworkImage(
                "https://github.com/user-attachments/assets/9eefce11-9d03-4bcc-8a6a-ffd8f154e727",
              ),
              child: Text("Jim"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "wozl",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "20:30",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            subtitle: Text("Do Somethig!!"),
          ),
        ],
      ),
    );
  }
}
