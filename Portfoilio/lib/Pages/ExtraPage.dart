
import 'package:flutter/material.dart';

import 'Pages.dart';
import 'HomePage.dart';


class ExtraPageState extends BasePageState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,

      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.redAccent,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.red),
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
                  title: Text(title,
                      style: const TextStyle(color: Colors.white)),
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

