import 'package:flutter/material.dart';

class AtividadeGlobalKey extends StatelessWidget {
  AtividadeGlobalKey({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Key'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonOne(),
              buttonTwo(),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.amber,
                  height: 900,
                  width: 500,
                  child: Navigator(
                    key: _key,
                    initialRoute: 'first',
                    onGenerateRoute: (settings) {
                      late Widget page;
                      if (settings.name == 'first') {
                        page = const FirstScreen();
                      } else {
                        page = const SecondScreen();
                      }
                      return PageRouteBuilder(
                        pageBuilder: (_, __, ___) => page,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconButton buttonOne() {
    return IconButton(
              iconSize: 100,
              onPressed: () {
                if (_key.currentContext != null) {
                  Navigator.of(_key.currentContext!).pushNamed('second');
                }
              },
              icon: const Icon(Icons.arrow_forward),
            );
  }

  IconButton buttonTwo() {
    return IconButton(
      iconSize: 100,
      onPressed: () {
        if (_key.currentContext != null) {
          Navigator.of(_key.currentContext!).pushNamed('first');
        }
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Primeira Tela'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text('Segunda Tela'),
      ),
    );
  }
}
