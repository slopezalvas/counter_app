import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 25);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '(❁´◡`❁)',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        backgroundColor: Colors.amber,
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
                      backgroundColor: Colors.orange,
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            print('Contador: $counter');
          },
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add_outlined)),
    );
  }
}
