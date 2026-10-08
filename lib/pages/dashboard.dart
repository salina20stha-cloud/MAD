import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  horizontalitem(size, String title, url, date){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 8),
          height:size.height/5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          width: size.width/1.5,


          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:Image.network(url,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(

          margin: EdgeInsets.only(left:10, right: 10, top: 8),
          height: size.height/5,

          width: size.width/1.5,

          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(20),

          ),
        ),


        Positioned(bottom:40, left: 30,
            child: Container(
                width: size.width/2,
                child: Text(title,
                  overflow: TextOverflow.ellipsis,maxLines: 2,
                  style: TextStyle(color: Colors.white),)
            )),
        Positioned(bottom:20, left: 30,
            child: Container(width: size.width/2,
                child: Text("2026-10-06 Tuesday",
                  overflow: TextOverflow.ellipsis,maxLines: 2,
                  style: TextStyle(color: Colors.white),)
            )),
        Positioned(bottom:20, right: 30,
            child: Container(
              child: Icon(Icons.play_circle, color: Colors.white,size: 30,),

            ))
      ],
    );
  }

  verticallistitem(size, String title, url, date, source){
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      fit: BoxFit.cover,
                      url,),
                  ),

                ),

              Container(
                height: 150,
                width: 150,
                child: Center(
                  child: Icon(Icons.play_circle_fill_rounded, size: 50,
                    color: Colors.white,),
                ),
              )
            ],
          ),

          Column(
            children: [

              Container(
              width: size.width/2,
              child: Text(title, maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ),

              Container(
                margin: EdgeInsets.all(15),
                width: size.width/2.1,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,
                          right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(source, style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(date,style: TextStyle(color: Colors.black),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [

            //horizontal list data
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  //horizontalitem(size, String title, url, date)
                  horizontalitem(size,
                      "Happy Dashain",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHsLaYLQWKxY5LwgvO39cNGHzl-wuYzYhb64m3FfAAemsgdZ2achaNl6s&s=10",
                      "02, FEB 2026"),

                  horizontalitem(size,
                      "Happy Tihar",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHsLaYLQWKxY5LwgvO39cNGHzl-wuYzYhb64m3FfAAemsgdZ2achaNl6s&s=10",
                      "05, FEB 2026"),

                  horizontalitem(size,
                      "Happy Dashain",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHsLaYLQWKxY5LwgvO39cNGHzl-wuYzYhb64m3FfAAemsgdZ2achaNl6s&s=10",
                      "02, FEB 2026"),





                ],
              ),
            ),

            //vertical list data
            Container(
              height: size.height/1.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    verticallistitem(size,
                        "PCPS DASHAIN FEST",
                        "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                        "02 Feb 2026", "PCPS News"),

                    verticallistitem(size,
                        "PCPS TIHAR FEST",
                        "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                        "05 Feb 2026", "PCPS News"),

                    verticallistitem(size,
                        "PCPS HOLI FEST",
                        "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                        "09 Feb 2026", "PCPS News"),

                    verticallistitem(size,
                        "PCPS CHHAT FEST",
                        "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                        "10 Feb 2026", "PCPS News"),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}