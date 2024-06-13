import 'package:flutter/material.dart';
import './components/my_card.dart';
import './components/buttons.dart';
import './components/storyCard.dart';
import 'detail_page.dart';
import 'settings_page.dart';
import 'home_page.dart';
import 'about_us_page.dart';

class ListPage extends StatelessWidget {
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
            ),ListTile(
              title: Text('Página Inicial'),
               onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
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
                  builder: (context) => AboutUsPage(),
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
                'Aprendendo com histórias',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),),
           
          
          SizedBox(height:20),
        
TextField(
      decoration: InputDecoration(
        hintText: 'O que você procura?',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16.0),
      ),
    ),
    SizedBox(height:20),
   Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza os botões na linha
      children: [
        Buttons(
          text: 'Hiperfoco',
          onTap: () {
            print('Botão 1 pressionado');
          },
        ),
       
        SizedBox(width: 8.0), // Espaço entre os botões
        Buttons(
          text: 'Alimentação',
          onTap: () {
            print('Botão 3 pressionado');
          },
        ),
        SizedBox(width: 8.0), // Espaço entre os botões
        Buttons(
          text: 'Hipersensibilidade',
          onTap: () {
            print('Botão 4 pressionado');
          },
        ),
      ],
    ),
          SizedBox(height:20),
          StoryCard(
              title: 'Professor Jorge em...',
              description: '“Como lidar com Hiperfoco”',
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Professor Jorge em...',
                    subtitle: 'Como lidar com Hiperfoco',
                  ),
                ),
              );},
            ),
            SizedBox(height:20),
            StoryCard(
              title: 'Mamãe da Juju em...',
              description: '“Problemas no Ano Novo”',
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Mamãe da Juju em...',
                    subtitle: 'Problemas no Ano Novo',
                  ),
                ),
              );},
            ),
        
        ],),),),],
      ),
 
    );
  }
}
