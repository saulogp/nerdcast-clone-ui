import 'package:flutter/material.dart';
import 'package:nerdcast_clone/screens/mais-info-nc.dart';

Widget cardNC(
    {BuildContext context,
    String name,
    String img,
    String edition,
    String duration,
    String date,
    String desc}) {
  return Container(
    padding: EdgeInsets.only(bottom: 5),
    width: double.infinity,
    height: 210,
    child: Card(
        elevation: 0,
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Image.network(
            img,
            fit: BoxFit.fill,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color.fromRGBO(0, 0, 0, 0.9),
                    Color.fromRGBO(0, 0, 0, 0)
                  ])),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end, //vertical
                //mainAxisAlignment: MainAxisAlignment.spaceBetween, //horizontal
                children: <Widget>[
                  _btnPlay(),
                  _conteudo(name, edition, duration, date),
                  _btnMore(context, name, edition, duration, date)
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MoreInfo()));
            },
          ),
        ])),
  );
}

Widget _btnPlay() {
  return SizedBox(
    height: 50,
    width: 50,
    child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[800],
        ),
        child: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {},
          color: Colors.white,
          iconSize: 28,
        )),
  );
}

Widget _conteudo(name, edition, duration, date) {
  return Container(
    padding: EdgeInsets.only(left: 5, bottom: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
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

Widget _btnMore(BuildContext context, name, edition, duration, date) {
  return Expanded(
      child: Padding(
    padding: EdgeInsets.only(right: 0),
    child: SizedBox(
      height: 50,
      width: 50,
      child: IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.grey[800],
          ),
          onPressed: () {
            _exibirDialogo(context, name, edition, duration, date);
          }),
    ),
  ));
}

void _exibirDialogo(context, name, edition, duration, date) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Row(
              children: <Widget>[
                Text(
                  "$edition | ",
                  style: TextStyle(color: Colors.grey[400], fontSize: 13),
                ),
                Text("$duration | ",
                    style: TextStyle(color: Colors.grey[400], fontSize: 13)),
                Text("$date",
                    style: TextStyle(color: Colors.grey[400], fontSize: 13)),
              ],
            ),
          ],
        ),
        content: Column(
          children: <Widget>[
            _listTile(Icon(Icons.cloud_download), "Baixar Episódio"),
            _listTile(Icon(Icons.favorite_border), "Favoritar"),
            _listTile(Icon(Icons.playlist_add), "Reproduzir a seguir"),
            _listTile(
                Icon(Icons.play_circle_outline), "Marcar como reproduzido"),
            _listTile(Icon(Icons.arrow_drop_down), "Marcar anterior como rep."),
            _listTile(Icon(Icons.info_outline), "Ver descrição completa"),
            _listTile(Icon(Icons.share), "Compartilhar"),
          ],
        ),
      );
    },
  );
}

Widget _listTile(Icon icon, String title) {
  return ListTile(
    leading: icon,
    title: Text("$title"),
    onTap: () {
      print("$title");
    },
  );
}
