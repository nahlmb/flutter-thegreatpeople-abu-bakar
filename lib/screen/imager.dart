import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Imager extends StatelessWidget {
  final String _imageUrl;
  final String _text;

  Imager(this._imageUrl, this._text);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(_imageUrl),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black54,
            )),
        Positioned(
          bottom: 24,
          left: 24,
          child: Text(_text,
              style: GoogleFonts.workSans(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
        )
      ]),
    );
  }
}
