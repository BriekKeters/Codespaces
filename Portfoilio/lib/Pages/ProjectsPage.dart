
import 'package:flutter/material.dart';

import 'Pages.dart';
import '../Projects/Projects.dart';


class ProjectsPageState extends BasePageState {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.blue),
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
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 512,mainAxisExtent: 512,crossAxisSpacing: 10,mainAxisSpacing: 10),
          addRepaintBoundaries: true,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: Projects.values.length,
          itemBuilder: (BuildContext context, int index){

            String title = Projects.values[index].toString();
            title = title.replaceAll("Projects.", "");
            String image = title + ".jpg";
                        return InkResponse(
                          onTap: () => setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => projectSelect(title)));
                          }),
                          child: Column(
                    children: <Widget>[
                      Image(
                          image: AssetImage(image),width: 512,
                        ),

                      Container(
                        width: 512,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                        ),
                        child:
                            SizedBox(
            height: 40,
            child:  Text(
                              title,
                              style: TextStyle(color: Colors.white,fontSize: 24),
                            ),
                        ),
                      ),
                    ],
                          ),
                        );
                    },
                ),

            ),
            );
  }
}
