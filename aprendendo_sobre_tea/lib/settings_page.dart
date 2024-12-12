import 'detail_page.dart';
import 'list_page.dart';
import 'home_page.dart';
import 'about_us_page.dart';
import './components/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './components/buttons.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalState globalState = Provider.of<GlobalState>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Card(
          margin: EdgeInsets.only(bottom: 10.0),
          elevation: 2,
          color: Color(0xFF68B2FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
                'Aprendendo Sobre TEA',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
      ),drawer: Drawer(
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
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Mamãe da Juju em...',
                    subtitle: 'Problemas no Ano Novo',
                    tema: '2'
                  ),
                ),
              );},
            ),
            ListTile(
              title: Text('Histórias de Escola'),
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Professor Júlio em...',
                    subtitle: 'Hiperfoco em sala de aula',
                    tema: '1'
                  ),
                ),
              );},
            ),
            ListTile(
              title: Text('Histórias com a Psiquiatra'),
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Professor Júlio em...',
                    subtitle: 'Hiperfoco em sala de aula',
                    tema: '1'
                  ),
                ),
              );},
            ),
            ListTile(
              title: Text('Histórias com a Psicóloga'),
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                   title: 'Mamãe da Juju em...',
                    subtitle: 'Problemas no Ano Novo',
                    tema: '2'
                  ),
                ),
              );},
            ),
            ListTile(
              title: Text('Histórias com os Familiares'),
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                   title: 'Mamãe da Juju em...',
                    subtitle: 'Problemas no Ano Novo',
                    tema: '2'
                  ),
                ),
              );},
            ),
            ListTile(
              title: Text('Histórias com o Professor'),
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Professor Júlio em...',
                    subtitle: 'Hiperfoco em sala de aula',
                    tema: '1'
                  ),
                ),
              );},
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diálogos',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeDialog('2');
                  },
                  child: Text('Muito Diálogo'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                 SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeDialog('1');
                  },
                  child: Text('Pouco Diálogo'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                 SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeDialog('2');
                  },
                  child: Text('Diálogo Balanceado'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Imagens',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeImage('1');
                  },
                  child: Text('Opção 1'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                 SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeImage('2');
                  },
                  child: Text('Opção 2'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                 SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    globalState.updateTypeImage('3');
                  },
                  child: Text('Opção 3'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

