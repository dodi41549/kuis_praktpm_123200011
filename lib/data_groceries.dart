import 'package:flutter/material.dart';
import 'package:kuis_praktpm_123200011/groceries.dart';
import 'package:kuis_praktpm_123200011/tampilan_groceries.dart';

class data_groceries extends StatelessWidget{
  const data_groceries({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman List Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryList.length,
        itemBuilder: (context, index) {
          final Groceries place = groceryList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => tampilan_groceries(place: place,),),
              );
            },
            child: Card(
              child: Row(
                children: [
                  //gambar
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/2,
                    child: Image.network(place.getImageUrl),
                  ),
                  //text
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                              place.name,
                              style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(place.storeName),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
