import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: rflu(),
  ));
}

class rflu extends StatefulWidget {
  const rflu({Key? key}) : super(key: key);

  @override
  State<rflu> createState() => _MyAppState();
}

class _MyAppState extends State<rflu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rflutter aleart'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Alert(
                          context: context,
                          title: "RFLUTTER",
                          desc: "Flutter is awesome.")
                      .show();
                },
                child: Text("alert #1")),
            ElevatedButton(
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "RFLUTTER ALERT",
                    desc: "Flutter is more awesome with RFlutter Alert.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "COOL",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                },
                child: Text("Alert #2")),
            ElevatedButton(onPressed: () {
              Alert(
                context: context,
                type: AlertType.warning,
                title: "RFLUTTER ALERT",
                desc: "Flutter is more awesome with RFlutter Alert.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "FLAT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "GRADIENT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();
            }, child: Text("Alert #3")),
          ],
        ),
      ),
    );
  }
}
