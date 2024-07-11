import 'package:flutter/material.dart';
import 'list_page.dart';
import 'settings_page.dart';
import 'home_page.dart';
import 'about_us_page.dart';
import 'package:provider/provider.dart';
import './components/globalVariable.dart';


class DetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String tema;

  const DetailPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.tema,
  }) : super(key: key);

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Mamãe da Juju em...',
                      subtitle: 'Problemas no Ano Novo',
                      tema: '2',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Histórias de Escola'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Professor Júlio em...',
                      subtitle: 'Hiperfoco em sala de aula',
                      tema: '1',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Histórias com a Psiquiatra'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Professor Júlio em...',
                      subtitle: 'Hiperfoco em sala de aula',
                      tema: '1',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Histórias com a Psicóloga'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Mamãe da Juju em...',
                      subtitle: 'Problemas no Ano Novo',
                      tema: '2',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Histórias com os Familiares'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Mamãe da Juju em...',
                      subtitle: 'Problemas no Ano Novo',
                      tema: '2',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Histórias com o Professor'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Professor Júlio em...',
                      subtitle: 'Hiperfoco em sala de aula',
                      tema: '1',
                    ),
                  ),
                );
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
                ); // Navegar para a página "Sobre"
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            if (tema == '1')
              ...[
                if (globalState.typeDialog == '1')
                  ...[
                    Text(
                      'Dra. Luiza: Olá, meu nome é Doutora Luiza, sou formada em psiquiatria com especialização em transtorno do espectro autisma e estarei ajudando você a entender melhor sobre Interesse especial e controle de fala. Para isso trouxe o professor Júlio para contar um caso que está acontecendo em uma de suas salas de aula, professor Júlio, pode começar',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Júlio: Muito prazer, sou o professor Júlio, ensino matemática no colégio Santa Luzia no centro de Recife. Sou professor há 8 anos mas nunca tinha tido um aluno com TEA antes. Esse ano em um dos meus 6º anos tenho um aluno chamado Gustavo que a mãe avisou a escola que é autista, porém não aconteceu nenhum treinamento ou conversa com os professores sobre o Gustavo ia precisar que os outros alunos não precisam.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Júlio: Logo na nossa primeira aula percebi que ele era bem quieto, achei que seria daqueles alunos tímidos que não fala muito mas que na prova tira um dez. Mas foi só começar a falar de frações que Gustavo se animou. Ele começou a sempre falar nas aulas e às vezes dizia assuntos avançados que ninguém da sala entendia, ele não levantava a mão e muitas vezes nem esperava eu terminar de falar. Conseguia ver a animação nele e não queria acabar com isso, não é algo que se vê todo dia, uma criança gostar de matemática tanto assim que estuda muito mais do que o professor pede, mas eu tenho outros 31 alunos em sala que não entendem o que Gustavo diz e que se prejudicariam se eu parasse tudo para explicar ou falar sobre aquilo. Falei com os outros professores e nas aulas de Geografia quando Diogo, o professor, começou a falar sobre o mapa do brasil e as crianças reclamam de decorar ele já tinha tudo na cabeça. Nas outras aula ele parece ficar sempre muito quieto. Queria entender o porque ele parece mudar da água para vinho e como fazer para ele entender que tudo tem hora sem matar essa animação que ele tem pelo assunto.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                  ]
                else if (globalState.typeDialog == '2')
                  ...[
                    Text(
                      'Dra. Luiza: Olá, meu nome é Doutora Luiza, sou formada em psiquiatria com especialização em transtorno do espectro autisma e estarei ajudando você a entender melhor sobre Interesse especial e controle de fala.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dra. Luiza: Para isso trouxe o professor Júlio para contar um caso que está acontecendo em uma de suas salas de aula, professor Júlio, pode começar.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Júlio: Muito prazer, sou o professor Júlio, ensino matemática no colégio Santa Luzia no centro de Recife. Sou professor há 8 anos mas nunca tinha tido um aluno com TEA antes. Esse ano em um dos meus 6º anos tenho um aluno chamado Gustavo que a mãe avisou a escola que é autista, porém não aconteceu nenhum treinamento ou conversa com os professores sobre o Gustavo ia precisar que os outros alunos não precisam.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Júlio: Logo na nossa primeira aula percebi que ele era bem quieto, achei que seria daqueles alunos tímidos que não fala muito mas que na prova tira um dez. Mas foi só começar a falar de frações que Gustavo se animou. Ele começou a sempre falar nas aulas e às vezes dizia assuntos avançados que ninguém da sala entendia, ele não levantava a mão e muitas vezes nem esperava eu terminar de falar. Conseguia ver a animação nele e não queria acabar com isso, não é algo que se vê todo dia, uma criança gostar de matemática tanto assim que estuda muito mais do que o professor pede, mas eu tenho outros 31 alunos em sala que não entendem o que Gustavo diz e que se prejudicariam se eu parasse tudo para explicar ou falar sobre aquilo. Falei com os outros professores e nas aulas de Geografia quando Diogo, o professor, começou a falar sobre o mapa do brasil e as crianças reclamam de decorar ele já tinha tudo na cabeça. Nas outras aula ele parece ficar sempre muito quieto. Queria entender o porque ele parece mudar da água para vinho e como fazer para ele entender que tudo tem hora sem matar essa animação que ele tem pelo assunto.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                  ],
              ],
            if (tema == '2')
              ...[
                if (globalState.typeDialog == '1')
                  ...[
                    Text(
                      'Psicologa Maria Flor: Olá, meu nome é Maria Flor, sou formada em psicologia com especialização em transtorno do espectro autisma e estarei ajudando você a entender melhor sobre Hipersensibilidade. Para isso trouxe a mamãe da Juju para contar um caso que está acontecendo nesse ano novo, mamãe da Juju, pode começar.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mamãe da Juju: Oi, meu nome é Mariana e sou a mãe da Juju. Toda criança gosta muito da época do ano novo porque ganha presentes. Esse ano decidi que a gente ia comemorar na casa da vovó com toda a família. Aí lembrei de como minha filha não é muito fã de fogos de artifícios, mesmo os mais fracos. Mas não só fui atras de fogos não, também pedi que a vovó comprasse um pijama de um desenho animado que ela gosta muito, fiz um bolo cheio de confeitos coloridos, chamei a madrinha dela, fiz uma playlist de músicas que ela adora e deu tudo certo, a festa foi um sucesso! Mas não sei se foi só para ela, a priminha do meu marido que também veio reclamou o tempo todo que a Juju não tava querendo brincar com ela. O barulho deixa ela muito nervosa e menos amigavel.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                     SizedBox(height: 20),
                    Text(
                      'Psicologa Maria Flor: Quem não fica de mau humor quando está desconfortavel, não é? Por isso uma solução são abafadores de som ou canceladores de ruídos, eles diminuem bastante o volume dos sons mais altos e isso ajuda a transformar uma noite que antes era um pesadelo em uma festividade alegre para todos.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                  ]
                else if (globalState.typeDialog == '2')
                  ...[
                    Text(
                      'Psicologa Maria Flor: Olá, meu nome é Maria Flor, sou formada em psicologia com especialização em transtorno do espectro autisma e estarei ajudando você a entender melhor sobre Hiperfoco. ',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Psicologa Maria Flor: Para isso trouxe a mamãe da Juju para contar um caso que está acontecendo nesse ano novo, mamãe da Juju, pode começar.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mamãe da Juju: Oi, meu nome é Mariana e sou a mãe da Juju. Toda criança gosta muito da época do ano novo porque ganha presentes. Esse ano decidi que a gente ia comemorar na casa da vovó com toda a família. Aí lembrei de como minha filha não é muito fã de fogos de artifícios, mesmo os mais fracos.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                     SizedBox(height: 20),
                    Text(
                      'Psicologa Maria Flor: Isso acontece pela hipersensibilidade, os fogos são altos para nós neurotípicos, mas para quem tem uma sensibilidade aumentada eles são muito altos e, inclusive, incomodam bastante.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mamãe da Juju: Não compramos fogos e tentamos criar distrações durante o dia mas o barulho deixa ela muito nervosa e menos amigavel, a priminha reclamou que estava brincando só.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF4169E1)),
                    ),
                     SizedBox(height: 20),
                    Text(
                      'Psicologa Maria Flor: Quem não fica de mau humor quando está desconfortavel, não é? Por isso uma solução são abafadores de som ou canceladores de ruídos, eles diminuem bastante o volume dos sons mais altos e isso ajuda a transformar uma noite que antes era um pesadelo em uma festividade alegre para todos.',
                      style: TextStyle(fontSize: 14.0, color: Color(0xFF993399)),
                    ),
                  ],
              ],
          ],
        ),
      ),
    );
  }
}
