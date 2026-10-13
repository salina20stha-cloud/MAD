import 'package:democlasssecc/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            Stack(
              children: [
                Container(
                  height: size.height/4.0,
                  width: size.width,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHsLaYLQWKxY5LwgvO39cNGHzl-wuYzYhb64m3FfAAemsgdZ2achaNl6s&s=10"),
                ),
                Container(
                  height: size.height/4.0,
                  width: size.width,
                  color: Colors.black26,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back,
                    color: Colors.white,size: 40,),
                  ),
                ),

                Positioned(
                  right: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share,
                      color: Colors.white,size: 40,),
                  ),
                ),
                Container(
                  height: size.height/4,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.play_circle_fill_rounded,
                        color: Colors.white,size: 60,),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Happy Dashain Everyone".toUpperCase(),
              style: TextStyle(fontSize: 20),maxLines: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Author Name"),
                  Text("02 Feb 2026")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Happy Dashain, Happy Dashain, Happy Dashain,"
                  "Happy Dashain,"
                  "Happy Dashain,"
                  "Happy Dashain,Happy Dashain,Happy Dashain,Happy Dashain,Happy Dashain,"
                  "Happy Dashain,"
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Related Videos", style: TextStyle(fontSize: 18),),
            ),

            dashboardState.verticallistitem(size,
                "PCPS TIHAR FEST",
                "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                "05 Feb 2026", "PCPS News"),

            dashboardState.verticallistitem(size,
                "PCPS TIHAR FEST",
                "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                "05 Feb 2026", "PCPS News"),

            dashboardState.verticallistitem(size,
                "PCPS TIHAR FEST",
                "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                "05 Feb 2026", "PCPS News"),

            dashboardState.verticallistitem(size,
                "PCPS TIHAR FEST",
                "https://media.edusanjal.com/uploads/(PCPS%20Graduation%202).png",
                "05 Feb 2026", "PCPS News")
          ],
        ),
      ),
    );
  }
}
