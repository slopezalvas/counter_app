import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedades
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '(❁´◡`❁)',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        backgroundColor: Colors.green[300],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cruelty_free_outlined),
            tooltip: 'Apretame!',
            color: Colors.black,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                '╰(*°▽°*)╯ Holaaaaaaaaa ╰(*°▽°*)╯',
                textAlign: TextAlign.center,
              )));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Ir a la pagina siguiente',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.deepPurple[200],
                      elevation: 10,
                      centerTitle: true,
                      title: const Text(
                        '༼ つ ◕_◕ ༽つ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    body: const Center(
                      child: Image(
                        image: NetworkImage(
                            'https://c.tenor.com/lmC0DQdzP7EAAAAC/chika-fujiwara.gif'),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: () => setState(() => counter ++),
              backgroundColor: Colors.green[300],
              child: const Icon(Icons.add_outlined)),
          FloatingActionButton(
             onPressed: () => setState(() => counter = 0),
              backgroundColor: Colors.green[300],
              child: const Icon(Icons.clear_outlined)),
          FloatingActionButton(
              onPressed: () => setState(() => counter --),
              backgroundColor: Colors.green[300],
              child: const Icon(Icons.remove_outlined)),
        ],
      ),
    );
  }
}
