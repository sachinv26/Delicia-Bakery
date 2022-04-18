import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Sweethome',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children:<Widget> [
          searchBarUI(),
        ],
      ),
    );
  }

  Widget searchBarUI(){

    return FloatingSearchBar(
      width: 300.0,
      height: 70.0,
      hint: 'Search.....',
      openAxisAlignment: 0.0,
      axisAlignment: -1.0,
      scrollPadding: EdgeInsets.only(top: 16,bottom: 20),
      elevation: 10.0,
      physics: BouncingScrollPhysics(),
      onQueryChanged: (query){
        //Your methods will be here
      },
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition){
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200.0,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                    subtitle: Text('more info here........'),
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}

