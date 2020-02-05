import 'package:flutter/material.dart';
import 'package:informationplatformdialog/informationplatformdialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.message),
          elevation: 10,
          onPressed: () async {
            await showDialog(
              barrierDismissible: false,
              context: context,
              child: InformationAlertDialog(
                iconTitle: Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                title: 'Não conseguimos',
                message: 'Conteúdo',
                buttons: [
                  InformationAlertDialog.createFlatButton(messageButton: 'OK'),
                ],
              ),
            );
          }),
    );
  }
}
