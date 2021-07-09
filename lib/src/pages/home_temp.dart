import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
 // const HomePageTemp({Key key}) : super(key: key);

  final items = ['Uno','dos','tres', 'cuatro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
       children: _createItemsShort()
      ),
    );
  }

  List<Widget> _createItems(){

    List<Widget> listNew = []; //crear una lista
  for (var item in items) {
    //creo un widget para asignar este valor
    final tempWidget= ListTile(
      title: Text(item),
    );
    //concatenar en cascada solo se pone .. asi agrego varios elementos

    listNew..add(tempWidget)
           ..add(Divider());

  }
  return listNew;
}


  List<Widget> _createItemsShort(){
    return items.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e+'!'),
            subtitle: Text('prueba'),
            leading: Icon(Icons.ac_unit),//al inicio parte izquierda
            trailing: Icon(Icons.arrow_back),//se coloca al final del elemento parte derecha
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();//convierto en una lista
  
  }
}