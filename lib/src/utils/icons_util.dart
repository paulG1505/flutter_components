import 'package:flutter/material.dart';

//arreglo que sirve como llave

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

//metodo para obtener iconos por su nombre

Icon getIcon(String name) {
  return Icon(_icons[name], color: Colors.blueAccent);
}
