import 'package:flutter/material.dart';
import 'package:pizzaria/models/mpizza.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pizza> listaPizzas = [
    Pizza(
      nome: "Batata Frita",
      ingredientes: "Batata frita, molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_batata_frita.png",
    ),
    Pizza(
      nome: "Calabresa",
      ingredientes: "Calabresa, molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_calabresa.png",
    ),
    Pizza(
      nome: "Camarão ",
      ingredientes: "Camarão , molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_camarao.png",
    ),
    Pizza(
      nome: "Frutos do Mar ",
      ingredientes: "Frutos do Mar , molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_frutos_mar.png",
    ),
    Pizza(
      nome: "Manjericão ",
      ingredientes: "Manjericão , molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_manjericao.png",
    ),
    Pizza(
      nome: "Mussarela",
      ingredientes: "Mussarela , molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_mussarela.png",
    ),
    Pizza(
      nome: "Portuguesa",
      ingredientes: "Presunto, Milho, molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_portuguesa.png",
    ),
    Pizza(
      nome: "Strogonoff ",
      ingredientes: "Strogonoff , molho de tomate, mussarela, azeitona",
      imagem: "images/pizzas/pizza_strogonoff.png",
    ),
  ];

  ListTile criarListTile(IconData icone, String texto) {
    return ListTile(
      leading: Icon(
        icone,
        color: Color.fromARGB(255, 240, 85, 69),
      ),
      title: Text(
        texto,
        style: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 192, 70),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 140, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.local_pizza),
            SizedBox(width: 5.0),
            Text("Ma'que Pizza"),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: listaPizzas.length,
        itemBuilder: (BuildContext context, int index) {
           print("Qual é o índice da pizza? ${listaPizzas[index].nome}? $index");
          return Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(listaPizzas[index].imagem),
                ),
                title: Text(listaPizzas[index].nome),
                subtitle: Text(listaPizzas[index].ingredientes),
              ),
              Divider (color: Colors.black),
            ],
          );
        },
      ),
      //Widget que serve para construir o menu "gaveta"
      //É o menu que aparece quando apertamos no três pauzinho(Hamburguer btn)
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 183, 28, 28),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(255, 240, 85, 69),
                        size: 140.0,
                      ),
                    ),
                    //É um botão que parece só um texto
                    //ou seja, não tem sombreamento
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ListTile cria itens de lista,pode ter icones no começo e no fim de cada item
              //Separamos em um método para ficar mais organizado.
              criarListTile(Icons.list, "Cardápio"),
              criarListTile(Icons.local_drink, "Bebidas"),
              criarListTile(Icons.cake, "Sobremesas"),
              Divider(color: Colors.black),
              criarListTile(Icons.star, "Avalie o App"),
              criarListTile(Icons.info, "Sobre"),
              criarListTile(Icons.perm_phone_msg, "Contato"),
              criarListTile(Icons.settings, "Configurações"),
            ],
          ),
        ),
      ),
    );
  }
}
