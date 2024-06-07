import './components/buttons.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
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
  final List<CustomButton> buttons;

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

