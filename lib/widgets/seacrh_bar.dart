import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  const SearchBarCustom({Key? key}) : super(key: key);

  @override
  _SearchBarCustomState createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: 200,
          height: 50,
          child: TextField(
            decoration: const InputDecoration(
              hintText: "Search...",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ),
      ],
    );
  }
}
