import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:overlapping_panels/overlapping_panels.dart';
import 'screens/left_page.dart';
import 'screens/main_page.dart';
import 'screens/right_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF5E81AC, {
          50: Color(0xFF5865F2),
          100: Color(0xFF5865F2),
          200: Color(0xFF5865F2),
          300: Color(0xFF5865F2),
          400: Color(0xFF5865F2),
          500: Color(0xFF5865F2),
          600: Color(0xFF5865F2),
          700: Color(0xFF5865F2),
        }),
        fontFamily: 'Montserrat',
        canvasColor: Color(0xFFECEFF4),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset footerOffset = const Offset(0, 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OverlappingPanels(
          left: Builder(builder: (context) {
            return const LeftPage();
          }),
          right: Builder(
            builder: (context) => const RightPage(),
          ),
          main: Builder(
            builder: (context) {
              return const MainPage();
            },
          ),
          onSideChange: (side) {
            setState(() {
              if (side == RevealSide.main) {
                footerOffset = const Offset(0, 1);
              } else if (side == RevealSide.left) {
                footerOffset = const Offset(0, 0);
              }
            });
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 160),
            offset: footerOffset,
            child: SizedBox(
              height: 50,
              child: Material(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.linux,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.child,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.search,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.at,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      CircleAvatar(
                        radius: 16,
                        foregroundImage: NetworkImage(
                            "https://w.wallha.com/ws/12/1JwkGxd0.jpg"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
