import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  final String text;
  final VoidCallback onTap;

  Buttons({required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        
        side: BorderSide(color: Colors.blue), // Cor da borda
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Borda arredondada
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Padding interno do botão
        backgroundColor: Colors.white, // Fundo branco
        minimumSize: Size(60, 30), // Tamanho mínimo do botão
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(color: Colors.blue), // Cor do texto
      ),
    );
  }
}