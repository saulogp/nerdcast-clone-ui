import 'package:flutter/material.dart';
import 'package:nerdcast_clone/model/nc_cards.dart';
import 'package:nerdcast_clone/model/nerdcast.dart';
import 'package:nerdcast_clone/screens/widgets/card.dart';

class Todos extends StatefulWidget {
  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: _body());
  }
}

_body() {
  List<NerdCast> ncs = NerdCastCards.getCastAll();
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
