import './components/buttons.dart';
import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'list_page.dart';
import 'home_page.dart';
import 'about_us_page.dart';

class SettingsPage extends StatelessWidget {
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
            Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza os botões na linha
      children:[
                Buttons(
                  text: 'Muito Diálogo',
                  onTap: () {
                    print('Muito Diálogo selecionado');
                  },
                ),
                Buttons(
                  text: 'Pouco Diálogo',
                  onTap: () {
                    print('Pouco Diálogo selecionado');
                  },
                ),
                Buttons(
                  text: 'Diálogo Balanceado',
                  onTap: () {
                    print('Diálogo Balanceado selecionado');
                  },
                ),
              ],),
            // ButtonRow(
            //   buttons: [
            //     Buttons(
            //       text: 'Muito Diálogo',
            //       onTap: () {
            //         print('Muito Diálogo selecionado');
            //       },
            //     ),
            //     Buttons(
            //       text: 'Pouco Diálogo',
            //       onTap: () {
            //         print('Pouco Diálogo selecionado');
            //       },
            //     ),
            //     Buttons(
            //       text: 'Diálogo Balanceado',
            //       onTap: () {
            //         print('Diálogo Balanceado selecionado');
            //       },
            //     ),
            //   ],
            // ),
            SizedBox(height: 20),
            Text(
              'Imagens',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ButtonRow(
              buttons: [
                Buttons(
                  text: 'Opção 1',
                  onTap: () {
                    print('Opção 1 selecionada');
                  },
                ),
                Buttons(
                  text: 'Opção 2',
                  onTap: () {
                    print('Opção 2 selecionada');
                  },
                ),
                Buttons(
                  text: 'Opção 3',
                  onTap: () {
                    print('Opção 3 selecionada');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  final List<Buttons> buttons;

  ButtonRow({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza os botões na linha
      children: buttons
          .map((button) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: button,
              ))
          .toList(),
    );
  }
}

