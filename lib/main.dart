import 'dart:ffi';
import 'dart:ui';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var faker = new Faker();
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.amber,

        appBar: AppBar(
          centerTitle: false,
          title: Text("Mission 1"),
        ),
        body: Column(children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: 500,
                  height: 200,
                  child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://picsum.photos/id/1/500/200"),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        // child: Icon((click == false) ? Icons.favorite : Icons.add, size: 20)
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.white,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: ((click == false) ? Colors.grey : Colors.red),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.indigo,
            ])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              "https://picsum.photos/id//100/100"))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              "https://picsum.photos/id/20/100/100"))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              "https://picsum.photos/id/30/100/100"))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              "https://picsum.photos/id/40/100/100"))),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.indigo,
            ])),
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                child: Text(
                  faker.lorem.sentence(),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.indigo,
            ])),
            height: 452,
            child: Wrap(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      "What is Lorem Ipsum? ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Divider(),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 15,
                                            color: Colors.white),
),
                    Divider(),
                    Text(
                      "Where it come from? ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Divider(),
                    Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "
                      "de Finibus Bonorum et Malorum"
                      " (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "
                      "Lorem ipsum dolor sit amet.."
                      ", comes from a line in section 1.10.32.",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Divider(),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
