# f_quiz

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<h1>Masum Vai Valo Manus</h1>
<h1>shaown bhaiher   Lucchami</h1>
<pre>
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

</pre>