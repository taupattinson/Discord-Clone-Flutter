import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:overlapping_panels/overlapping_panels.dart';

import '../data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.hashtag,
                      color: Theme.of(context).canvasColor,
                      size: 18,
                    ),
                    Text(' основной')
                  ],
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            OverlappingPanels.of(context)?.reveal(RevealSide.left);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.search, size: 20),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.right);
            },
          ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.users,
              size: 20,
            ),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.right);
            },
          )
        ],
      ),
      body: ListView(
        children: [...chat, ...chat]
            .map((chatEntry) => ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  leading: CircleAvatar(
                    foregroundImage: NetworkImage(chatEntry['user']['avatar']),
                  ),
                  title: Row(
                    children: [
                      Text(
                        chatEntry['user']['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        chatEntry["time"],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                  subtitle: Text(
                    chatEntry['message'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  onTap: () {},
                  onLongPress: () {},
                ))
            .toList(),
      ),
    );
  }
}
