import 'package:flutter/material.dart';
import 'package:nerdcast_clone/model/nc_cards.dart';
import 'package:nerdcast_clone/model/nerdcast.dart';
import 'package:nerdcast_clone/screens/widgets/card.dart';

class NaoReproduzidos extends StatefulWidget {
  @override
  _NaoReproduzidosState createState() => _NaoReproduzidosState();
}

class _NaoReproduzidosState extends State<NaoReproduzidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: _body());
  }
}

_body() {
  List<NerdCast> ncs = NerdCastCards.getCast();
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
