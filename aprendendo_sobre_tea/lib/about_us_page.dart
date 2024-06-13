import 'package:flutter/material.dart';
import 'list_page.dart';
import 'settings_page.dart';
import 'home_page.dart';

class AboutUsPage extends StatelessWidget {

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
            Center( child: Text(
              'Sobre o APP ',
              style: TextStyle(fontSize: 24.0),
            ),),
            SizedBox(height: 10.0),
            Center( child:Text(
              'Aprendendo Sobre TEA',
              style: TextStyle(fontSize: 18.0),
            ),),
            SizedBox(height: 12.0),
            Text('Aplicatico para compartilhar conhecimento sobre Transtorno de Espectro Autista para professores, responsáveis e pessoas em geral que convivem com pessoas dentro do espectro. Através de histórias contadas de forma lúdica são debatidos temas como sintomas, comportamentos e vivências sobre o tema.',style: TextStyle(fontSize: 14.0),)
          ],
        ),),),]
      ),
    );
  }
}
