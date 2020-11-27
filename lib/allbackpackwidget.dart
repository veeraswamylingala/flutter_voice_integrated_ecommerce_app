import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';


Widget allBackpack(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height - 150,
      //  padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(0),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          children: [
            //Tshirt--------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp5h1EFqibuHZMS2afooBdVraF78PUbLvN3AY4OnXOyqY_0e2sxiW0zrMp9VtYjWszqIzQ4kE&usqp=CAc"),
            ),
            //Shirts--------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp5h1EFqibuHZMS2afooBdVraF78PUbLvN3AY4OnXOyqY_0e2sxiW0zrMp9VtYjWszqIzQ4kE&usqp=CAc"),

            ),
            //Pants---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://assets.ajio.com/medias/sys_master/root/ajio/catalog/5f04c39eaeb26931758448b7/-473Wx593H-460612563-grey-MODEL.jpg"),

            ),
            //Watches---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://assets.ajio.com/medias/sys_master/root/ajio/catalog/5f04c39eaeb26931758448b7/-473Wx593H-460612563-grey-MODEL.jpg"),
            ),
            //BackPacks
            GestureDetector(
              onTap: (){
               var ab =  SpeechScreen() ;

               },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Image.network("https://assets.ajio.com/medias/sys_master/root/ajio/catalog/5f04c39eaeb26931758448b7/-473Wx593H-460612563-grey-MODEL.jpg"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://assets.ajio.com/medias/sys_master/root/ajio/catalog/5f04c39eaeb26931758448b7/-473Wx593H-460612563-grey-MODEL.jpg"),
            ),

          ],
        )),
  );


}