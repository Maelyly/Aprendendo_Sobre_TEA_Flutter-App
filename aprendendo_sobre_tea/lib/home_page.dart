import 'package:flutter/material.dart';
import './components/my_card.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Card(
          margin: EdgeInsets.only(bottom: 10.0),
          elevation: 2,
          color: Color(0xFF68B2FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Set border radius to zero
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Center(
                child: Text(
              'Aprendendo Sobre TEA',
              style: TextStyle(
                fontSize: 20.0, // Adjust text size as needed
                color: Colors.white, // Set text color to white
              ),
            )),
            iconTheme: IconThemeData(color: Colors.white),
            actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child:Text(
                'Vamos Aprender!',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),),
           Center( child:  Text('Essa é uma aplicação para ajudar na aprendizagem do TRANSTORNO DE ESPECTRO AUTISTA', style: TextStyle(color: Colors.black, fontSize: 15),),),
           Center( child:  Text('Escolha uma história e venha aprender!', style: TextStyle(color: Colors.black, fontSize: 20),),),
          
          SearchBar(),
          MyCard(
            title: 'Papai do Lulu em...',
            subtitle: 'Como conseguir o Cartão de Indentificação',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Papai do Lulu em...',
                    subtitle: 'Como conseguir o Cartão de Indentificação',
                  ),
                ),
              );
            },
          ),
          MyCard(
            title: 'Mamãe da Juju em...',
            subtitle: 'O que é Seletividade Alimentar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Mamãe da Juju em...',
                    subtitle: 'O que é Seletividade Alimentar',
                  ),
                ),
              );
            },
          ),
          // Add more cards as needed
        ],
      ),
    );
  }
}
