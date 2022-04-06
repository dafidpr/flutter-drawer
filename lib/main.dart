import 'package:flutter/material.dart';
import 'package:pertemuan_kelima/constant/colors.dart';
import 'package:pertemuan_kelima/widgets/camera/camera_screen.dart';
import 'package:pertemuan_kelima/widgets/chats/chat_screen.dart';
import 'package:pertemuan_kelima/widgets/nav_drawer.dart';
import 'package:pertemuan_kelima/widgets/appbar.dart';
import 'package:pertemuan_kelima/widgets/calls/call_screen.dart';
import 'package:pertemuan_kelima/widgets/status/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: MyHomePage(title: 'WhatsApp'),
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        drawer: CustomDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CustomAppBar(),
            ];
          },
          body: TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
