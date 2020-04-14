import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';
import 'tabs/PersionCenter.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
    PersionCenterPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
          // title: Text("Flutter Demo"),
        //   actions: <Widget>[
        //     new IconButton(icon: new Icon(Icons.search), onPressed: _openSearch),
        //     new IconButton(icon: new Icon(Icons.add), onPressed: _openAdd),
        //   ],
        // ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,   //配置对应的索引值选中
          onTap: (int index){
              setState(() {  //改变状态
                  this._currentIndex=index;
              });
          },
          iconSize:24.0,      //icon的大小
          fixedColor:Colors.lightBlue,  //选中的颜色  
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("个人")
            )
          ],
        ),
      );
  }
  // void _openSearch(){}
  // void _openAdd(){}
}

  