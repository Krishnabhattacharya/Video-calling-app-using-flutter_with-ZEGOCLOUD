import 'dart:math'as math;

import 'package:flutter/material.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final String userid=math.Random().nextInt(10000).toString();

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  final c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: c,
              decoration: InputDecoration(
                hintText: "Enter Call Id",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => call(callid: c.toString()))));
              },
              child: Text('Join')),
        ],
      ),
    );
  }
}

class call extends StatelessWidget {
  final String callid;
  const call({super.key, required this.callid});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(appID:1274999620 ,appSign: "d4eb47836e563d9f903b87d7ab491b831f139d14d834e960d990a453ef4ca3af",callID: callid,config:ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom=(context) {
        Navigator.pop(context);
      } ,userID:userid ,userName:'user_$userid' ,),
    );
  }
}
