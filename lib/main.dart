import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my own imports
import 'package:flutter_ecom/components/horizontal_listview.dart';
import 'package:flutter_ecom/components/products.dart';
//import 'package:flutter_ecom/components/bottom_navbar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget  image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/1.png'),
        AssetImage('assets/2.png'),
        AssetImage('assets/3.png'),
        AssetImage('assets/2.png'),
        AssetImage('assets/1.png'),
        AssetImage('assets/3.png'),
      ],
      autoplay: true,
      dotSize: 10.0,
      dotColor: Colors.red[900],
      dotBgColor: Colors.grey[400].withOpacity(0.5),
      indicatorBgPadding: 15.0,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

   return Scaffold(
     appBar: new AppBar(
       elevation: 0.1,
       iconTheme: new IconThemeData(color: Colors.red[900]),
       backgroundColor: Colors.white,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Image.asset(
             'assets/logo.png',
             fit: BoxFit.cover,
             height: 45.0,
             color: Colors.red,
           ),
         ],
       ),
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search, color: Colors.red[900],), onPressed: (){}),
         new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.red[900],), onPressed: (){}),
         new IconButton(icon: Icon(Icons.person, color: Colors.red[900],), onPressed: (){}),
       ],
     ),

     drawer: new Drawer(
       child: new ListView(
         children: <Widget>[
           //header
           new UserAccountsDrawerHeader(
               accountName: Text('Hayk'),
               accountEmail: Text('hayk@hmail.hayk'),
            currentAccountPicture: GestureDetector(
             child: new CircleAvatar(
               backgroundColor: Colors.grey,
               child: Icon(Icons.person, color: Colors.red,),
             ),
           ),
             decoration: new BoxDecoration(
               color: Colors.red[900]
             ),
           ),
           //body
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('Home page'),
               leading: Icon(Icons.home),
             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('My accaunt'),
               leading: Icon(Icons.person),
             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('My Orders'),
               leading: Icon(Icons.shopping_basket),
             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('Categories'),
               leading: Icon(Icons.dashboard),
             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('Favorites'),
               leading: Icon(Icons.favorite),
             ),
           ),

           Divider(),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('Settings'),
               leading: Icon(Icons.settings,color: Colors.blue,),
             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text('About'),
               leading: Icon(Icons.help, color: Colors.green,),
             ),
           ),
         ],
       ),
     ),

     body: new ListView(
       children: <Widget>[
         //image carousel begins here
         image_carousel,

         //padding widget
         new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
                'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
         ),

         //Horizontal list views begins here
         HorizontalList(),

         //padding widget
         new Padding(
           padding: const EdgeInsets.all(20.0),
           child: new Text(
               'Recent products',
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 20.0),
           ),
         ),

         // grid view

         Container(
           height: 320.0,
           child: Products(),
         ),

         //padding widget
         /*new Padding(
           padding: const EdgeInsets.all(20.0),
           child: new Text(
             'Bottom navbar',
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 20.0),
           ),
         ),

         // grid view

         Container(
           height: 50.0,
           child: BottomNav(),
         )
*/
       ],
     ),
   );
  }
}


