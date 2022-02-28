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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizePage(),
    );
  }
}

class QuizePage extends StatefulWidget {
  const QuizePage({Key? key}) : super(key: key);

  @override
  _QuizePageState createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  List<Widget> scoreKeeper = [];

  List<String> questions = [
    "This is a True question with position of 0 ",
    "This is a False question with position of 1 ",
    "This is a True question with position of 2 ",
    "This is a False question with position of 3 ",
  ];

  int questionsNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quizer",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21.0),
          ),
        ),
        body: Container(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      questions[questionsNumber],
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: TextButton(
                        onPressed: () {

                          questionsNumber++;

                          setState(() {
                            scoreKeeper.add(
                                const Icon(Icons.check, color: Colors.green));
                          });
                        },
                        child: const Text("true",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                      
                          questionsNumber++;
                          setState(() {
                            scoreKeeper.add(
                                const Icon(Icons.close, color: Colors.red));
                          });
                        },
                        child: const Text("false",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: scoreKeeper,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
