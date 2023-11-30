import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data.dart';

class LeftPage extends StatelessWidget {
  const LeftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Row(
          children: [
            SizedBox(
              width: 85,
              child: ListView(
                  children: servers
                      .map((server) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFECEFF4),
                              radius: 30,
                              foregroundImage: NetworkImage(server),
                            ),
                          ))
                      .toList()),
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey[100]!))),
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "taup server",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Theme.of(context).primaryColor),
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        FontAwesomeIcons.ellipsisVertical,
                                        color: Theme.of(context).primaryColor,
                                      ))
                                ],
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  color: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    child: Text('Пригласить участников',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Material(
                            color: Colors.white,
                            child: ListView(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(FontAwesomeIcons.angleDown,
                                          size: 18, color: Colors.grey),
                                      SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          'TEXT CHANNELS',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Icon(FontAwesomeIcons.plus,
                                          size: 18, color: Colors.grey),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                ...["General", "Clans", "UFC"]
                                    .map((channel) => ListTile(
                                          leading: const Icon(
                                              FontAwesomeIcons.hashtag,
                                              size: 20),
                                          horizontalTitleGap: 0,
                                          title: Text(channel,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          onTap: () {},
                                        )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(FontAwesomeIcons.angleDown,
                                          size: 18, color: Colors.grey),
                                      SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          'VOICE CHANNELS',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Icon(FontAwesomeIcons.plus,
                                          size: 18, color: Colors.grey),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                ...["Main", "Help"].map((channel) => ListTile(
                                      leading: const Icon(
                                        FontAwesomeIcons.volumeUp,
                                        size: 20,
                                      ),
                                      horizontalTitleGap: 0,
                                      title: Text(channel,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      onTap: () {},
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
