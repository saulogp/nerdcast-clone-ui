import 'package:flutter/material.dart';

class MoreInfo extends StatefulWidget {
  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[850],
        child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              child: Image.network(
                "https://www.multiversos.com.br/wp-content/uploads/2018/01/MAG12.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.black,
              height: 90,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: _btnPlay(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: _conteudo(
                        name: "NerdCast - Capítulo Nove",
                        edition: "Nerdcast 123",
                        duration: "1:30:34",
                        date: "12/12/3333"),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              child: Row(
                children: <Widget>[
                  _iconCustom(Icons.favorite_border, "FAVORITAR"),
                  _iconCustom(Icons.get_app, "BAIXAR"),
                  _iconCustom(Icons.playlist_add, "AD. A SEGUIR"),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Descrição",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Convidados",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            _convidado(
                "https://osegredo.com.br/wp-content/uploads/2018/02/pessoas-que-superam-a-depress%C3%A3o-830x450.jpg",
                "Nome do Convidado 1",
                "@nomedoconvidado"),
            _convidado(
                "https://media.semprefamilia.com.br/semprefamilia/2019/10/capa-mentalmente-fortes-620x349-4d44b41a.png",
                "Nome do Convidado 2",
                "@nomedoconvidado"),
            _convidado(
                "https://static1.conquistesuavida.com.br/articles//4/56/84/@/18404-gente-que-da-prioridade-aos-sentimentos-article_gallery-2.jpg",
                "Nome do Convidado 3",
                "@nomedoconvidado"),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Nerdpower",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            _nerdPower(Icons.invert_colors, "CACETE DE AGULHA"),
            _nerdPower(Icons.face, "ESCALPO SOLIDÁRIO"),
            _nerdPower(Icons.color_lens, "ARTE DOS FÃS"),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Edição por",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "RÁDIOFOBIA PODCAST E MULTIMÍDIA",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Divider(
              color: Colors.grey[600],
              height: 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: <Widget>[
                _btnBottom(Colors.red, "ENVIAR EMAIL"),
                _btnBottom(Colors.grey[400], "COMENTÁRIOS")
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _btnPlay() {
  return SizedBox(
    height: 40,
    width: 40,
    child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[800],
        ),
        child: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {},
          color: Colors.white,
          iconSize: 24,
        )),
  );
}

Widget _conteudo({name, edition, duration, date}) {
  return Container(
    padding: EdgeInsets.only(left: 5, bottom: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Text("$edition | ", style: TextStyle(color: Colors.grey[400])),
            Text("$duration | ", style: TextStyle(color: Colors.grey[400])),
            Text("$date", style: TextStyle(color: Colors.grey[400])),
          ],
        ),
      ],
    ),
  );
}

Widget _iconCustom(icon, text) {
  return Expanded(
      child: GestureDetector(
    onTap: () {
      print("$text");
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 32,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ),
  ));
}

Widget _convidado(img, nome, redeSocial) {
  return ListTile(
    leading: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage("$img"), fit: BoxFit.cover),
      ),
    ),
    title: Text(
      "$nome",
      style: TextStyle(color: Colors.white),
    ),
    subtitle: Text("$redeSocial", style: TextStyle(color: Colors.grey[700])),
  );
}

Widget _nerdPower(icon, text) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.red,
    ),
    title: Text("$text", style: TextStyle(color: Colors.red)),
  );
}

Widget _btnBottom(cor, text) {
  return Expanded(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: RaisedButton(
            color: cor,
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          )));
}
