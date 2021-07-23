import 'package:components_fluttter/src/pages/alerts_page.dart';
import 'package:components_fluttter/src/providers/menu_provider.dart';
import 'package:components_fluttter/src/utils/icons_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Componentes")),
      body: _list(),
    );
  }

  Widget _list() {
    //para retorno del async await
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //se dispara con la data
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    data?.forEach((element) {
      final widgetTemp = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
          onTap: () {
            //navegar entre pantallas
            final route = MaterialPageRoute(builder: (context) {
              return AlertPage();
            });

            Navigator.push(context, route);
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
