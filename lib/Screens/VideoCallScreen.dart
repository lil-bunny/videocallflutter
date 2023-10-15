    import 'package:flutter/material.dart';
    import 'package:agora_rtc_engine/rtc_engine.dart';
    import 'package:permission_handler/permission_handler.dart';

    class VideoCallScreen extends StatefulWidget {
      @override
      _VideoCallScreenState createState() => _VideoCallScreenState();
    }

    class _VideoCallScreenState extends State<VideoCallScreen> {
      RtcEngine _engine;

      @override
      void initState() {
        super.initState();
        initAgora();
      }

      Future<void> initAgora() async {
        await [Permission.camera, Permission.microphone].request();
        _engine = await RtcEngine.create(APP_ID);
        await _engine.enableVideo();
        _engine.setEventHandler(RtcEngineEventHandler(
          joinChannelSuccess: (channel, uid, elapsed) {
            setState(() {
              // Handle UI changes
            });
          },
          userJoined: (uid, elapsed) {
            setState(() {
              // Handle UI changes
            });
          },
          userOffline: (uid, reason) {
            setState(() {
              // Handle UI changes
            });
          },
        ));
        await _engine.joinChannel(null, 'test', null, 0);
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          // Add UI for video call
        );
      }

      @override
      void dispose() {
        _engine.leaveChannel();
        _engine.destroy();
        super.dispose();
      }
    }