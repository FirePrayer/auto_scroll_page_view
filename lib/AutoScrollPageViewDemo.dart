import 'package:flutter/material.dart';
import 'AutoScrollPageView.dart';

class AutoScrollPageViewDemo extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        // TODO: implement build
        List<Widget> widgetList = [];
        widgetList.add(new Center(child: new Container(color: Colors.orange, width: 300.0, height: 300.0, child: new Text("A"),),));
        widgetList.add(new Center(child: new Container(color: Colors.orange, width: 300.0, height: 300.0, child: new Text("B"),),));
        widgetList.add(new Center(child: new Container(color: Colors.orange, width: 300.0, height: 300.0, child: new Text("C"),),));
        //widgetList.add(new Center(child: new Container(color: Colors.orange, width: 300.0, height: 300.0, child: new Text("D"),),));

        OnPageChanged pageChanged = (int index)
        {
            print("当前下标----------------------->$index");
        };

        AutoScrollPageView autoScrollPageView = AutoScrollPageView(widgetList, onPageChanged: pageChanged,);
        return new Center(child: autoScrollPageView);
    }
}

