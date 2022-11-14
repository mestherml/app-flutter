import 'package:flutter/material.dart';

class GridViewOperationsPage extends StatefulWidget {
  const GridViewOperationsPage({super.key});

  @override
  State<GridViewOperationsPage> createState() => _GridViewOperationsPageState();
}

class _GridViewOperationsPageState extends State<GridViewOperationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 5,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            })));
  }
}

class Operations {
  const Operations({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Operations> choices = <Operations>[
  Operations(title: 'Mi ruta', icon: Icons.map_outlined),
  Operations(title: 'Ordenes de Servicio', icon: Icons.list_outlined),
  Operations(title: 'Inventario', icon: Icons.contacts_outlined),
  Operations(title: 'Tareas', icon: Icons.task_outlined),
  Operations(title: 'Recuperaciones', icon: Icons.business_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Operations choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    return Card(
        //margin: const EdgeInsets.symmetric(horizontal: 5),
        color: Colors.grey[50],
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child:
                        Icon(choice.icon, size: 40, color: textStyle?.color)),
                Text(
                  choice.title,
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
              ]),
        ));
  }
}
