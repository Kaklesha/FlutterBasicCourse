import 'package:flutter/material.dart';
import 'package:untitled/quote.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCard();
}

class _NinjaCard extends State<NinjaCard> {

  List<Quote> quotes=[
    Quote(text: 'text', author: "author"),
    Quote(text: 'text2', author: "author2"),
    Quote(text: 'text3', author: "author3"),
  ];

  Widget  quoteTemplate(Quote quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                quote.text,
                    style: TextStyle(
            fontSize: 10,
          color: Colors.grey[600],
            )
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fff"),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote) ).toList(),

      ),
    );
  }
}

