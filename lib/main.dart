import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlaylistScreen(),
    );
  }
}

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chill Vibes 2024',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              '100,321 likes • 1 hr 21 min',
              style: TextStyle(fontSize: 10, color: Colors.white70),
            ),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {
              // Action when the heart icon is pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Action for the three-dot menu icon
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 2, 19, 46),
      ),
      backgroundColor: const Color.fromARGB(255, 2, 19, 46),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network('https://example.com/song_image.jpg'),
            title: Text(
              'Serenity Dreams',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Luna Bliss',
              style: TextStyle(color: Colors.white70),
            ),
            trailing: Text(
              '4:12',
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NowPlayingScreen()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          // Play action
        },
      ),
    );
  }
}

class NowPlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Favorite action
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network('https://example.com/song_image_large.jpg'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Serenity Dreams',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text('Luna Bliss', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Slider(
            value: 0.3, // Current playback position
            onChanged: (value) {
              // Handle slider change
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('3:42'),
                Text('5:04'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {
                    // Previous song
                  },
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    // Play/Pause
                  },
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    // Next song
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
