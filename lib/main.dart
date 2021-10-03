

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:NewNews(),
    );
  }
}
class NewNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepPurple,
        title:Center(child: Text('New News')) ,
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image(
                image:AssetImage('assets/image1.jpg'),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage:AssetImage('assets/image2.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('Instructor',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              style:TextStyle(
                letterSpacing: 1.5,
              ) ,
            ),
           ]
      ) ,
      ),
        bottomNavigationBar:BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.deepPurple[400],
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border,
                color: Colors.white,
              ),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.chat,
                color: Colors.white,
              ),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.share,
                color: Colors.white,
              ),
              label: 'share',
            ),
          ],
        )
    );
  }
}

