import 'package:flutter/material.dart';

AppBar customAppbar(BuildContext context) {
  return AppBar(
    title: Text(
      'Promaco',
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(fontWeight: FontWeight.w500),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.search_outlined,
          color: Colors.black,
          size: 25,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.notifications_none_outlined,
          size: 25,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    ],
  );
}
