import 'package:flutter/material.dart';
import 'package:nerdcast_clone/screens/baixados.dart';
import 'package:nerdcast_clone/screens/favoritos.dart';
import 'package:nerdcast_clone/screens/nao-reproduzido.dart';
import 'package:nerdcast_clone/screens/todos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> telas = [NaoReproduzidos(), Todos(), Baixados(), Favoritos()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            title: _titleAppBar(),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              _simplePopup()
            ],
            bottom: _tabBar(),
          ),
          drawer: _drawer(),
          body: TabBarView(children: telas),
        ));
  }

  Widget _titleAppBar() {
    return Row(
      children: <Widget>[
        Text(
          "Nerd",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "Cast",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }

  Widget _tabBar() {
    return TabBar(
      isScrollable: true,
      tabs: <Widget>[
        Tab(
          text: "NÃO REPRODUZIDOS",
        ),
        Tab(
          text: "TODOS",
        ),
        Tab(
          text: "BAIXADOS",
        ),
        Tab(
          text: "FAVORITOS",
        ),
      ],
    );
  }

  Widget _simplePopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text("Visualizar em lista"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Filtrar"),
          ),
        ],
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      );

  Widget _drawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Image.network(
                    "https://lh3.googleusercontent.com/uq8X8xvqB3SY0kLPZt093TPC-zvX283YiuzzNxcr-6XhcvTfCAjaGcu9yfXPW22kb-g",
                    height: 150,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    child: Center(
                      child: Text(
                        "O mundo pop vira piada no Jovem Nerd",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          _listTileDrawer("NerdBunker", Icon(Icons.flash_on)),
          _listTileDrawer("Videos", Icon(Icons.play_arrow)),
          _listTileDrawer("NerdCast", Icon(Icons.mic)),
          _listTileDrawer("NerdStore", Icon(Icons.local_grocery_store)),
          _listTileDrawer("Ajustes", Icon(Icons.settings)),
        ],
      ),
    );
  }

  Widget _listTileDrawer(title, icon) {
    return ListTile(
      onTap: () {
        print("$title");
      },
      title: Text("$title"),
      leading: icon,
    );
  }
}
