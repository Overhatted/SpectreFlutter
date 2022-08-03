import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  int _counter = 0;
  String _selected_website = "";

  void _inputChanged(String value) {
    setState(() {
      _counter = _counter + 10;
      if (_counter >= 50) {
        Navigator.pushNamed(context, "/a");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Full Complete Legal Name',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Your password for $_selected_website',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Site:',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextField(
              onChanged: _inputChanged,
            ),
            Expanded(
              child: ListView(
                children: const [
                  Text("I'm dedicating every day to you"),
                  Text('Domestic life was never quite my style'),
                  Text('When you smile, you knock me out, I fall apart'),
                  Text('And I thought I was so smart'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
