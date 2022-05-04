import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
   build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({Key? key, }) : super(key: key);
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  double suma = 0;

  @override
   build( context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Suma dos numeros"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10),

      child: Column(
        children: [
          TextField(
        controller: n1 ,
            keyboardType: TextInputType.number ,
        decoration:  InputDecoration(
            hintText: "Numero 1",
          suffix: IconButton(
              onPressed: n1.clear,
              icon const Icon:(Icons.close))),
        ),

          TextField(
    controller: n2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Numero 2"
            ) ,
          )
        ],
      ),),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          suma = double.parse(n1.text) + double.parse(n2.text);
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Suma"),
                  content: Text("Resultado: $suma"),
                );
              });
        },
          child: const Icon(Icons.add),
    ),
        );
//Aldo Alexis Meza Arguelles
  }
}
