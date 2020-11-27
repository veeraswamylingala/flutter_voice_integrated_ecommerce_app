import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget  cartwidget(BuildContext context){
  return Container(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Card(
          elevation:10.0,child: Container(
          width:250,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvpmUiTcmXA7Aai2DwlVaUia_s9BmDFRTuGg&usqp=CAU",height: 250,))),

      SizedBox(height: 30,),

      Text("Amazon BackPack v2.3",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

      SizedBox(height: 30,),
      Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Total Amount :",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
          Text("1899",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          )
        ],),
      ),
      SizedBox(
        height: 55,
      ),
      Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: FlatButton(color: Colors.white54,onPressed: (){},
          child: Text("Place order",style: TextStyle(fontSize: 19,color: Colors.white),),
        ),
      )

    ],
  ),
  );
}