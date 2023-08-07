import 'package:flutter/material.dart';

class chatpage extends StatefulWidget {
  const chatpage(
      {super.key,
      required this.getuseremail,
      required this.getuserid,
      required this.getusername});
  final String getuseremail;
  final String getuserid;
  final String getusername;

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.getuseremail)),
    );
  }
}
