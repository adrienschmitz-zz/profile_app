import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF69383),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.badge),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Projeção Informática',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-25, 0),
                child:
                    Text('2008 - 2019', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  'Instalação, reparo, manutenção e atualização de computadores desktop e notebooks Windows. Suporte Técnico, fornecendo suporte a PC, diagnosticando, solucionando problemas e resolvendo problemas do cliente com manutenção, instalações e atualizações de hardware. Conhecimento em conexões de área de trabalho remota, compartilhamento de arquivos ponto a ponto e outros aplicativos associados à assistência remota de TI. Capacidade de lidar com diferentes clientes e sistemas diferentes simultaneamente. Atendimento de telefonemas, abertura de chamados, deslocamento e atendimento ao cliente',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.justify,
                )),
            ListTile(
              leading: Icon(Icons.badge),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Websul Sites e Sistemas',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-25, 0),
                child:
                    Text('2006 - 2007', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  'Análise de  tickets de incidentes e resposta aos usuários finais de forma adequada e dentro dos padrões estabelecidos; resolução de tickets abertos de maneira oportuna e profissional, garantindo uma experiência positiva ao cliente. Instalação e configuração  de Rádios de internet 2.4 Ghz',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
      ),
    );
  }
}
