import 'package:flutter/material.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 5,
            children: List.generate(options.length, (index) {
              return Center(
                child: SelectCard(option: options[index]),
              );
            })));
  }
}

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.option}) : super(key: key);
  final OptionsRuta option;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7)),
            Ink(
                height: 50.0,
                width: 100.0,
                decoration: const ShapeDecoration(
                  color: Color.fromARGB(255, 217, 201, 219),
                  shape: CircleBorder(),
                ),
                child: Icon(option.icon, size: 35, color: Colors.white)),
            const Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Text(
              option.title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionsRuta {
  const OptionsRuta(
      {required this.title, required this.icon, required this.color});
  final String title;
  final IconData icon;
  final Color color;
}

const List<OptionsRuta> options = <OptionsRuta>[
  OptionsRuta(
      title: 'Mi ruta',
      icon: Icons.add_road_outlined,
      color: Color.fromARGB(255, 157, 214, 240)),
  OptionsRuta(
      title: 'Ordenes de Servicio',
      icon: Icons.list_outlined,
      color: Color.fromARGB(255, 211, 170, 184)),
  OptionsRuta(
      title: 'Inventario',
      icon: Icons.all_inbox_outlined,
      color: Color.fromARGB(255, 230, 190, 203)),
  OptionsRuta(
      title: 'Tareas',
      icon: Icons.note_add_outlined,
      color: Color.fromARGB(255, 233, 226, 163)),
  OptionsRuta(
      title: 'Recuperaciones',
      icon: Icons.widgets_outlined,
      color: Color.fromARGB(255, 157, 214, 240)),
];
