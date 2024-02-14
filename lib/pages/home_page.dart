import 'package:ai_project/pages/add_model_page.dart';
import 'package:ai_project/pages/all_images_page.dart';
import 'package:ai_project/pages/image_uploade_page.dart';
//import 'package:persistent_bottom_nav_bar/nav_bar_styles/style_15_bottom_nav_bar.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _pages = [
    AllImagesPage(),
    ImageUploadePage(),
    AddModelPage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("WhooMI",style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 40,
        ),),
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent),
            ),
            child: Center(
              child: IconButton(
                onPressed: (){},
                icon:Icon(Icons.person ,color: Colors.blueAccent,size: 20,),
              ),
            )
          )
        ],
      ),
      body: _pages[currentPage],
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.add,color: Colors.black,),label: "Uploade"),
          BottomNavigationBarItem(icon:Icon(Icons.folder_shared_outlined,color: Colors.black,),label: "Faces"),
        ],
      ),
    );
  }
}
