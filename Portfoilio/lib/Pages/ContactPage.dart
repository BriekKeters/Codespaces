
import 'package:flutter/material.dart';

import 'Pages.dart';
import 'HomePage.dart';


class ContactPageState extends BasePageState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellowAccent,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Text("Menu",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    )),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Pages.values.length,
              itemBuilder: (BuildContext context, int index) {
                String title = Pages.values[index].toString();
                title = title.replaceAll("Pages.", '');
                return ListTile(
                  onTap: () => setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pageSelect(title)));
                  }),
                  title: Text(title),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You are currently on page',
            ),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

