import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget amazonbackpacks(BuildContext context){
  return SingleChildScrollView(
    //reverse: true,
    child: Container(
        height: MediaQuery.of(context).size.height - 150,
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            //Tshirt--------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvpmUiTcmXA7Aai2DwlVaUia_s9BmDFRTuGg&usqp=CAU"),

            ),
            //Shirts--------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjJogdl3IL2F3G2ar8S7LOA-6bGVzjM309M6lPonPcI-fJGWH1mWsD91Bio0G-ZdbBWB0TaaE&usqp=CAc"),
            ),
            //Pants---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnpqkHq9IY7iQQohx-gHOWGfjuzBWbp5PQRqccTTRIEmL7Fl3rqVx2joaE2Q&usqp=CAc"),
            ),
            //Watches---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTioutmFg7tVYq6zJ3yXdfGGBQAJOg7kMli1w&usqp=CAU"),

            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdlSjuDItvkUxQ7ZuhKkkHW42Z9cigLL-53zHi9_u3vDS75J-6okAGs1cNrQcTq-5W08HHUQ&usqp=CAc"),
            ),


          ],
        )),
  );

}