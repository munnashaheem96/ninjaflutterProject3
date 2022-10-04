import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wild', text: 'Hey How Are You'),
    Quote(author: 'Oscar Wild', text: 'Hey How Are You'),
    Quote(author: 'Oscar Wild', text: 'Hey How Are You'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 6.0),
            Text(
              quote.author,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Some Quotes'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          // ignore: unnecessary_string_interpolations
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
    );
  }
}
