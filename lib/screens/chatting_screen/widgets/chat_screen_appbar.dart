import 'package:flutter/material.dart';

class ChatScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  final String contactName;

  const ChatScreenAppBar({Key? key, required this.contactName}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        contactName,
        style: TextStyle(
          color: Theme.of(context).textTheme.titleLarge!.color,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      titleSpacing: 5,
      leadingWidth: 72,
      leading: IconButton(
        icon: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              // Back Icon
              Icon(
                Icons.arrow_back,
                color: Theme.of(context).iconTheme.color,
              ),
              // Profile photo
              const Expanded(
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        // Video call button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.videocam,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        // Voice call button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        // Menu button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
  }
}
