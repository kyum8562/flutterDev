import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(++counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
            titleLarge: TextStyle(
          color: Colors.red,
        )),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Counter',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const MyLargeTitle(),
              Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 40,
                ),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(
                  iconSize: 50,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'MyLargeTitle',
      style: TextStyle(
        color: Theme.of(context).textTheme.titleLarge!.color,
        fontSize: 50,
      ),
    );
  }
}
