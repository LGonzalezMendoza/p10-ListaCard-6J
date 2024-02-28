import 'package:flutter/material.dart';

void main() => runApp(MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi ListView Gonzalez",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Gonzalez"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("Tekamine"),
                subtitle: Text("lo mas insano en guitarras"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
