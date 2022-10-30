import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class TextLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hello, World!',
          style: GoogleFonts.leckerliOne(fontSize: 40) ,),
          Text(
            'Text can wrap without issue',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Text('lorem Ipsum is simply dummy text in a story with just one paragraph and no other paragraph character'),
          const Divider(),
          RichText(text: const TextSpan(
            text: 'Flutter text is ',
            style: TextStyle(fontSize: 22 , color: Colors.black),
            children: <TextSpan>[
              TextSpan (
                text: 'really',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color : Colors.blue,
                ),
                children: [
                  TextSpan(
                    text: 'powerful',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      fontSize: 40,
                    )
                  )
                ]
              )
            ]
          ) )
      ],
    );
  }
}