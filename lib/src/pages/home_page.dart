import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);

        return ListView(
          children: _items(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _items(List<dynamic> data, BuildContext context) {
    return data.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item['texto']),
            leading: getIcon(item['icon']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, item['ruta']);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
