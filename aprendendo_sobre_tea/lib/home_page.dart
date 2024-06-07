import 'package:flutter/material.dart';
import './components/my_card.dart';
import './components/storyCard.dart';
import 'detail_page.dart';
import 'list_page.dart';
import 'settings_page.dart';

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
                fontSize: 25.0, // Adjust text size as needed
                color: Colors.white, // Set text color to white
              ),
            )),
            iconTheme: IconThemeData(color: Colors.white),
            //actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Ache sua História',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Histórias sobre Sintomas'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Histórias de Escola'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Histórias com a Psiquiatra'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Histórias com a Psicóloga'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Histórias com os Familiares'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Histórias com o Professor'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
              },
            ),
            ListTile(
              title: Text('Sobre o App'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(),
                ),
              ); // Navegar para a página "Sobre"
              },
            ),
            ListTile(
              title: Text('Personalize seu App'),
              onTap: () {
                Navigator.pop(context); // Fechar o drawer
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );  // Navegar para a página "Sobre"
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: 
       SizedBox(
           
            width: 400,
          child: ListView(
            shrinkWrap: true,
        children: [
          Center(
            child:Text(
                'Vamos Aprender!',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),),
           Center( child: Container(
            margin: const EdgeInsets.only(top: 12.0, bottom: 10.0), 
            child: Text('Essa é uma aplicação para ajudar na aprendizagem do TRANSTORNO DE ESPECTRO AUTISTA', style: TextStyle(color: Colors.black, fontSize: 15),),),),
           Center( child:  Text('Escolha uma história e venha aprender!',textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 20),),),
          MyCard(
            title: 'Aprendendo com histórias',
            subtitle: 'Para pessoas que querem começar do básico',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(),
                ),
              );
            },
          ),
          MyCard(
            title: 'Aprendendo em menos tempo',
            subtitle: 'Para pessoas com algum conhecimento na área',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(),
                ),
              );
            },
          ),

          
        ],),),),],
      ),
                   
    );
  }
}
