import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';

class Modul4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      App.labelPercobaan(),
      App.createButtonModul(
        "App Bar",
        margin_1: EdgeInsets.all(0),
        action: () => Navigator.pushNamed(context, "/modul/4/appbar"),
      ),
    ];

    for (int i = 1; i <= 6; i++) {
      items.add(
        App.createButtonModul(
          "${i}",
          action: () => Navigator.pushNamed(context, "/modul/4/percobaan/${i}"),
          margin_1: EdgeInsets.all(0),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Modul 4"),
        centerTitle: true,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}

class Modul4AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.code),
        centerTitle: true,
        title: Text("App Bar"),
        backgroundColor: Colors.black,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: App.createButtonModul(
          "Kembali",
          action: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

class Modul4Percobaan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 150,
        backgroundColor: Colors.black,
        title: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png",
          scale: 10,
        ),
        centerTitle: true,
      ),
    );
  }
}

class Modul4Percobaan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleSpacing: 100,
        title: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png",
          scale: 10,
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.person,
              color: Colors.blueAccent,
            ),
            tooltip: "Profile",
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}

class Modul4Percobaan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percobaan 3"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.green,
                Colors.blue,
              ],
            ),
          ),
        ),
        elevation: 0,
      ),
    );
  }
}

class Modul4Percobaan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Percobaan 4"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Image.asset("assets/images/robot.png"),
            ),
          ),
          const Text(
            "Irda Islakhu Afa | From Assets",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 20),
            child: const Image(
              image: CachedNetworkImageProvider(
                "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
              ),
            ),
          ),
          const Center(
            child: Text(
              "From CachedNetworkImage",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Modul4Percobaan5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Percobaan 5"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.orange,
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 0, left: 50, right: 50),
            child: CachedNetworkImage(
              imageUrl:
                  "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
              width: 300,
              height: 200,
              placeholder: (context, url) => const Text("gambar anu"),
              errorWidget: (context, url, error) => Text("error: $error"),
            ),
          ),
        ],
      ),
    );
  }
}

class Modul4Percobaan6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Conf.title),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.orange,
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
                width: 300,
                height: 200,
                placeholder: (context, url) => const Text("gambar anu"),
                errorWidget: (context, url, error) => Text("error: $error"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
            child: CachedNetworkImage(
              imageUrl:
                  "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
              width: 300,
              height: 200,
              placeholder: (context, url) => const Text("gambar anu"),
              errorWidget: (context, url, error) => Text("error: $error"),
              color: Colors.blue,
              colorBlendMode: BlendMode.hue,
            ),
          ),
        ],
      ),
    );
  }
}
