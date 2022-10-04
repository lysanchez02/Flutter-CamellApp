import 'package:flutter/material.dart';
import 'package:camellapp/screens/mispostulaciones.dart';

class OfertasDeEmpleo extends StatelessWidget {
  final categorias = const [
    'Obra Blanca',
    'Obra Negra',
    'Electricista',
    'Aseadora',
    'Repeyo'
  ];
  const OfertasDeEmpleo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecciona Una Categoria"),
        elevation: 5,
      ),
      body: ListView.separated(
        itemCount: categorias.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.construction),
          title: Text(categorias[index]),
          onTap: () {
            final cat = categorias[index];
            print(cat);
          },
          textColor: Color.fromARGB(255, 37, 33, 33),
          iconColor: Color.fromARGB(255, 37, 33, 33),
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
