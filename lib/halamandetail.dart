import 'package:flutter/material.dart';
import 'data_buku.dart';

class HalamanDetail extends StatelessWidget {
  final DataBuku buku;
  const HalamanDetail({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false, //tombol back
        title: Text(buku.title),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /3,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(buku.imageLink),
                )
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.all(20),
            child: Table(
              // defaultColumnWidth: FixedColumnWidth(120),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Judul')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    Text(buku.title)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Penulis')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    Text(buku.author)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Bahasa')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    Text(buku.language)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Negara')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    Text(buku.country)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Jumlah Halaman')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    Text('$buku.pages')
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Tahun Terbit')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    // Text(buku.year)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [
                    Text('Status')
                  ]),
                  Column(children: [
                    Text(':')
                  ]),
                  Column(children: [
                    // Text(buku.isAvailable)
                  ]),
                ]),
              ],
            ),
          )
          // Text('Judul : ' buku.title),
          // Text(buku.author),
          // Text(buku.language),
          // Text(buku.country),
        ],
      ),
    );
  }
}
