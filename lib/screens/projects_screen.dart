import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/projects.dart';
import '../widgets/item_card.dart';

//TODO: use dynamic data flow, remove demoData form here
class ProjectsScreen extends StatelessWidget {
  Future<void> _refreshProjects(BuildContext context) async {
    await Provider.of<Projects>(context, listen: false).fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    final projects = Provider.of<Projects>(context);
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.teal,
                  size: 35,
                )),
            title: Text('Mersal Projects'),
            centerTitle: true,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () => _refreshProjects(context),
          child: Consumer<Projects>(
            builder: (BuildContext context, projects, Widget child) =>
                ListView.builder(
                  itemBuilder: (context, i) => ItemCard(projects.items[i]),
                  itemCount: projects.items.length,
            ),
          ),
        ));
  }
}
