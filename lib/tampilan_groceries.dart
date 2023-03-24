import 'package:flutter/material.dart';
import 'package:kuis_praktpm_123200011/groceries.dart';
import 'package:kuis_praktpm_123200011/data_groceries.dart';

class tampilan_groceries extends StatelessWidget{
  final Groceries place;
  const tampilan_groceries({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => data_groceries(),
                  ),
                  );
                },
              );
            }),
        title: Text(place.name),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(
                    place.getImageUrl,
                    fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Nama Barang : " + place.name),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                      "Nama Toko : " + place.storeName,
                      style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Harga : " + place.price),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Stok : " + place.stock),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Potongan Harga : " + place.discount),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Nilai Barang : " + place.reviewAverage),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Deskripsi : " + place.description),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}