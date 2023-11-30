import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data.dart';

class RightPage extends StatelessWidget {
  const RightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              width: 50,
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
                        SizedBox(height: 40),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey[100]!))),
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon((FontAwesomeIcons.hashtag),
                                      color: Theme.of(context).primaryColor),
                                  Expanded(
                                      child: Text(
                                    " основной",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Theme.of(context).primaryColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16, top: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Column(children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.slack,
                                      size: 32,
                                      color: Theme.of(context).primaryColor,
                                    )),
                                const Text(
                                  "Ветки",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                              const Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        FontAwesomeIcons.piedPiperAlt,
                                        size: 32,
                                        color: Theme.of(context).primaryColor,
                                      )),
                                  const Text(
                                    "Уведомления  ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        FontAwesomeIcons.cog,
                                        size: 28,
                                        color: Theme.of(context).primaryColor,
                                      )),
                                  const Text(
                                    "Настройки",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.grey[200]),
                              padding: const EdgeInsets.all(7),
                              child: const Icon(FontAwesomeIcons.userPlus,
                                  size: 18),
                            ),
                            title: const Text("Пригласить участников"),
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey[100],
                            child: Material(
                              child: ListView(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      'В СЕТИ - 5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  ...users.map(
                                    (user) => ListTile(
                                      leading: CircleAvatar(
                                          radius: 22,
                                          foregroundImage: NetworkImage(
                                            user["avatar"]!,
                                          )),
                                      horizontalTitleGap: 0,
                                      title: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(user["name"]!)),
                                      onTap: () {},
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      'НЕ В СЕТИ - 9',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  ...users2.map(
                                    (user) => ListTile(
                                      leading: CircleAvatar(
                                          radius: 22,
                                          foregroundImage: NetworkImage(
                                            user["avatar"]!,
                                          )),
                                      horizontalTitleGap: 0,
                                      title: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Text(user["name"]!)),
                                      onTap: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
