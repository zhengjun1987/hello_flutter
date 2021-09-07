import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

main() => runApp(PopupMenuButtonDemo());

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopupMenuButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButtonDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopupMenuButtonDemo'),
        ),
        body: Center(
          child: TextButton(
            onPressed: null,
            child: PopupMenuButton(
              onSelected: (selected) {
                print("selected = $selected");
                // js_primitives.dart:30 selected = ConferenceItem.LockConference
                // js_primitives.dart:30 selected = ConferenceItem.TurnoffAll
                // js_primitives.dart:30 selected = ConferenceItem.ModifyLayout
                // js_primitives.dart:30 selected = ConferenceItem.AddMember
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  /*
                  * 此value值即点击后返回的参数selected
                  * */
                    value: ConferenceItem.AddMember,
                    child: Text('添加成员')
                ),
                PopupMenuItem(
                    value: ConferenceItem.LockConference,
                    child: Text('锁定会议')
                ),
                PopupMenuItem(
                    value: ConferenceItem.ModifyLayout,
                    child: Text('修改布局')
                ),
                PopupMenuItem(
                    value: ConferenceItem.TurnoffAll,
                    child: Text('挂断所有')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
