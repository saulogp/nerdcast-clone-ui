import 'package:flutter/material.dart';
import 'package:nerdcast_clone/model/nc_cards.dart';
import 'package:nerdcast_clone/model/nerdcast.dart';
import 'package:nerdcast_clone/screens/widgets/card.dart';

class Favoritos extends StatefulWidget {
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: _body());
  }
}

_body() {
  List<NerdCast> ncs = NerdCastCards.getCastFav();
  return _listView(ncs);
}

_listView(ncs) {
  return ListView.builder(
      itemCount: ncs.length,
      itemBuilder: (context, index) {
        NerdCast nc = ncs[index];
        return cardNC(
            context: context,
            name: nc.name,
            img: nc.img,
            edition: nc.edition,
            duration: nc.duration,
            date: nc.date,
            desc: nc.desc);
      });
}
