import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal, // like what's up
          leading: IconButton(
            color: Colors.black,
            onPressed: (){}, // required
            icon: Icon( Icons.menu),
          ),
          title: Text(
            'AKRAM_2',
            style: TextStyle(
              fontSize: 25 ,
              //---------------------fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){ print("add was clicked"); },
                icon: Icon( Icons.add , size: 40, color: Colors.black, )
            ) ,
            IconButton(
                onPressed: VoidHere,
                icon: Text(
                  'click here',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 10 ,
                      fontWeight: FontWeight.bold
                  ),
                )
            )
          ],
          elevation: 5,
          centerTitle: 10 > 5,
        ),
        /*---------------------------------------------------*/
        body: Column(
          children: [
            Padding(// free space ---padding----> <----padding----
              //padding: const EdgeInsetsDirectional.only(start: 20 , end: 20 , bottom: 20 , top: 20),
              //padding: const EdgeInsets.symmetric(horizontal: 60 , vertical: 30),
              padding:  const EdgeInsets.all(80), // required
              child: Container(
                decoration: BoxDecoration(   // edit shape of widget
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(80) ,
                        topStart: Radius.circular(80) ,
                        bottomEnd: Radius.circular(180),
                        bottomStart: Radius.circular(180)
                    )
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,// root bach ytcoupaw les cotes
                child: Stack(
                  alignment: Alignment.topCenter, // for all children widgets childre
                  children: [
                    Image(
                      image: NetworkImage('https://static.wikia.nocookie.net/naruto/images/e/ef/Itachi_Uchiwa_2.png/revision/latest?cb=20161101162942&path-prefix=fr')
                      , width: 250, height: 200,
                      fit: BoxFit.fill, // trigli l'image 3la 7sab resolution
                    ) ,
                    Container(
                      color: Colors.black.withOpacity(.70),
                      width: double.infinity,
                      padding: /*EdgeInsetsDirectional.only(
                      top: 30 , bottom: 30 , start: 10, end: 0
                    ), */EdgeInsetsDirectional.symmetric(
                          vertical: 5 , horizontal: 20
                      ),
                      child:  Text('ITASHI UCHIHA' ,
                        textAlign: TextAlign.center, // under container
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),
                      ),
                      /*texto(Colors.yellow)*/// function i wrote it on bottom
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}

void VoidHere(){
  print('here was clicked');
}
Widget texto(Color color){
  return Text('karimoooo' , style: TextStyle( color: color),);
}