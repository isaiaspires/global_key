import 'package:flutter/material.dart';

class AtividadePageView extends StatefulWidget {
  const AtividadePageView({Key? key}) : super(key: key);

  @override
  State<AtividadePageView> createState() => _AtividadePageViewState();
}

class _AtividadePageViewState extends State<AtividadePageView> {
  late PageController _pageController;
  int paginaAtual = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: paginaAtual);
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonOne(),
              buttonTwo(),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  height: 900,
                  child: PageView(
                    controller: _pageController,
                    children: const [
                      FirstScreen(),
                      SecondScreen(),
                    ],
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
        _pageController.jumpToPage(1);
      },
      icon: const Icon(Icons.arrow_forward),
    );
  }

  IconButton buttonTwo() {
    return IconButton(
      iconSize: 100,
      onPressed: () {
        _pageController.jumpToPage(0);
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
      backgroundColor: Colors.blue,
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
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Segunda Tela'),
      ),
    );
  }
}
