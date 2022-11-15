import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> entries = <String>[
    '筋トレで伸び悩んでいる方絶対見て下さい',
    'ガリガリ過ぎるサイヤマンを救いたい',
    'お久しぶりです。実はコロナに感染しました。'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '横川くんの筋肉チャンネル',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.devices),
          SizedBox(width: 16),
          Icon(Icons.search_rounded),
          SizedBox(width: 16),
          Icon(Icons.menu),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.__qejkJyzGr7SlPwfuWg3wHaE6?w=300&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const Text('3.6万 回視聴・10 時間前',
                            style: TextStyle(color: Colors.white, fontSize: 14),)
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
