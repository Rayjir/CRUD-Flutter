import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class Userlist extends StatelessWidget {
  const Userlist({super.key});

  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};
    return Scaffold(
     appBar: AppBar(
      title: const Text('lista de usuarios'),
     ),
     body: ListView.builder(
      itemCount: users.length,
      itemBuilder: (ctx, i) =>Text(users.values.elementAt(i).name),
     ),
    );
  }
}