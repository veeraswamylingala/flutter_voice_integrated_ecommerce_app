import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget allCategory(BuildContext context){
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
              child: Image.network("https://images-na.ssl-images-amazon.com/images/I/91SZ3aDkLEL._UX679_.jpg"),
            ),
            //Shirts--------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://images-na.ssl-images-amazon.com/images/I/61HN9ktMFOL._UX679_.jpg"),
            ),
            //Pants---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://media.istockphoto.com/photos/mens-trousers-picture-id510615049?k=6&m=510615049&s=612x612&w=0&h=wNq7K4R8XbcIRYN1CtES6yi5w2no1ansSEflefcnbgw="),
            ),
            //Watches---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://cdn1.ethoswatches.com/pub/media/catalog/product/cache/c9e0b0ef589f3508e5ba515cde53c5ff/h/u/hugo-boss-contemporary-sport-1513755-large.jpg"),
            ),
            //Backpacks-------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://assets.ajio.com/medias/sys_master/root/ajio/catalog/5f04c39eaeb26931758448b7/-473Wx593H-460612563-grey-MODEL.jpg"),
            ),
            //Shoes---------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcToJAzlCIESLxkDpFZaqjXZ1Z6qsEvRq_SG9-lDmp_c-X8SIIoxykBKGfPymcbtr99s53_2vgHAjg&usqp=CAc"),
            ),

          ],
        )),
  );

}