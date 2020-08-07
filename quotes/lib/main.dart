import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Nelson Mandela",
        text:
            "The greatest glory in living lies not in never falling, but in rising every time we fall."),
    Quote(
        author: "Walt Disney",
        text: "The way to get started is to quit talking and begin doing."),
    Quote(
        author: "Steve Jobs",
        text:
            "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking."),
    Quote(
        author: "Eleanor Roosevelt",
        text:
            "If life were predictable it would cease to be life, and be without flavor."),
    Quote(
        author: "John Lennon",
        text: "Life is what happens when you're busy making other plans."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((e) => QuoteCard(
                quote: e,
                delete: () {
                  setState(() {
                    quotes.remove(e);
                  });
                }))
            .toList(),
      ),
    );
  }
}
