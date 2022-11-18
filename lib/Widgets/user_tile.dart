import 'package:flutter/material.dart';
import 'package:flutter_crud/user.dart';


class UserTile extends StatelessWidget {

  final User user;

  const UserTile(this.user, {super.key});


  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
    ? const CircleAvatar(child: Icon(Icons.person))
    : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: IconButton(

      )
    );
  }
}