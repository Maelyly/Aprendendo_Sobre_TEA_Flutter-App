import 'package:flutter/material.dart';
// import 'package:fashion_app/color_filters.dart';

 class Test extends StatefulWidget{
  @override
    _TestState createState ()=> _TestState();


  }



class _TestState extends State <Test> {
  final double _borderRadious = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion store'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [

          buildColoredCard1(),
          buildColoredCard2(),
          buildColoredCard3()

        ],
      ),


    );
  }


  Widget buildColoredCard1() =>
      Card(
        shadowColor: Colors.red,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
         
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Colored card',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height:60),
              Text(
                'This card is rounded and has a gradient',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,

                ),


              ),
            ],
          ),
        ),
      );


  Widget buildColoredCard2() =>
      Card(
        shadowColor: Colors.red,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Colored card',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'This card is rounded and has a gradient',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,

                ),


              ),
            ],
          ),
        ),
      );


  Widget buildColoredCard3() =>
      Card(
        shadowColor: Colors.red,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Colored card',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'This card is rounded and has a gradient',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,

                ),


              ),
            ],
          ),
        ),
      );

}