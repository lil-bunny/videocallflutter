    // ... existing code ...

    FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VideoCallScreen()),
        );
      },
      child: Icon(Icons.video_call),
    )

    // ... existing code ...