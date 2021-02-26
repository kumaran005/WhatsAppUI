import 'package:flutter/material.dart';
import 'package:whatsappui/customWidget/storyButton.dart';
import 'package:whatsappui/whatsUI.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color mainColor = Color(0xFF177767);
  TabController _tabController;
  List<IconData> icons = <IconData>[
    (Icons.camera_alt_rounded),
    (Icons.message),
    (Icons.add_a_photo_rounded),
    (Icons.add_call)
  ];
  @override
  void initState() => {
        super.initState(),
        _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
          ..addListener(() {
            setState(() {});
          })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title:
              Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: mainColor,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Center(
                  child: Icon(Icons.camera_alt, size: 20),
                ),
              ),
              Tab(
                  child: Center(
                      child: Text("CHATS",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500)))),
              Tab(
                  child: Center(
                      child: Text("STATUS",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500)))),
              Tab(
                  child: Center(
                      child: Text("CALLS",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500)))),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Icon(Icons.camera_alt)),
            Whatsapp(),
            Status(),
            Center(child: Icon(Icons.call)),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: Icon(icons[0]))
            : _tabController.index == 1
                ? FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: Icon(icons[1]),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FloatingActionButton(
                            backgroundColor: Colors.green,
                            onPressed: () {},
                            child: Icon(icons[2]),
                          ),
                        ],
                      )
                    : FloatingActionButton(
                        backgroundColor: Colors.green,
                        onPressed: () {},
                        child: Icon(icons[3]),
                      ));
  }
}
