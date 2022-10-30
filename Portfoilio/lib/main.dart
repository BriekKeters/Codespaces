import 'package:flutter/material.dart';
import 'package:portfoilio/main.dart';

void main() {
  runApp(const MyApp());
}

enum Pages { Home, About, Projects, Contact, Extra }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Briek Keters Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Briek Keters'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key, required this.title});
  final String title;
  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.green),
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
                    switch (title) {
                      case 'Home':
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage(
                                      title: 'Home',
                                    )));
                        break;
                      case 'About':
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProjectsPage(
                                      title: 'About',
                                    )));
                        break;
                      case 'Projects':
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProjectsPage(
                                      title: 'Projects',
                                    )));
                        break;
                      case 'Contact':
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProjectsPage(
                                      title: 'Contact',
                                    )));
                        break;
                      case 'Extra':
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProjectsPage(
                                      title: 'Extra',
                                    )));
                        break;
                    }
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

class _MyHomePageState extends State<MyHomePage> {
  String _selectedPage = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 10, top: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.green),
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
                            builder: (context) => ProjectsPage(title: title)));
                    _selectedPage = title;
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
              _selectedPage,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
