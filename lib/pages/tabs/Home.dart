import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget view = new Container(
      child:new ListView(
        children: [
          new Container(
            padding: const EdgeInsets.only(bottom:16.0),
            child: new Image.asset(
              'images/lake.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
          ),
          new Row(
            children: [
              new Expanded(child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: const EdgeInsets.only(left:32.0,bottom: 8.0),
                      child: new Text(
                        'Oeschinen Lake Campground',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left:32.0,bottom: 8.0),
                      child: new Text(
                        'Kandersteg, Switzerland',
                        style: new TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(bottom:8.0),
                child: new Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(right:32.0,bottom: 8.0),
                child: new Text('41'),
              ),
            ],
          ),
          new Row(
            children:[
              new Expanded(child: new Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Icon(Icons.call, color:Colors.blue),
                  new Container(
                    margin: const EdgeInsets.only(top:8.0),
                    child: new Text(
                      'Call',
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )),
              new Expanded(child: new Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Icon(Icons.near_me, color:Colors.blue),
                  new Container(
                    margin: const EdgeInsets.only(top:8.0),
                    child: new Text(
                      'Route',
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )),
              new Expanded(child: new Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Icon(Icons.share, color:Colors.blue),
                  new Container(
                    margin: const EdgeInsets.only(top:8.0),
                    child: new Text(
                      'Share',
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ))
            ]
          ),
          new Container(
            padding: const EdgeInsets.only(top: 8.0,left: 32.0,right: 32.0,bottom: 32.0),
            child: new Text(
                '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
                ''',
                //softwrap属性表示文本是否应在软换行符（例如句点或逗号）之间断开。
                softWrap: true,
              ),
          ),
        ]
      ), 
    );
    return view;
  }
}