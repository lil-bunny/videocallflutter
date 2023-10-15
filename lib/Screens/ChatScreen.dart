// ... existing code ...

    FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VideoCallScreen(parameter1: value1, parameter2: value2)),
        );
      },
      child: Icon(Icons.video_call),
    )

    // ... existing code ...