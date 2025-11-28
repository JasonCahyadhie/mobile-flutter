import 'package:flutter/material.dart';

class MdIconButtonPage extends StatefulWidget {
  const MdIconButtonPage({Key? key}) : super(key: key);

  @override
  State<MdIconButtonPage> createState() => _MdIconButtonPageState();
}

class _MdIconButtonPageState extends State<MdIconButtonPage> {
  bool _isFavorite = false;
  double _volume = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic IconButtons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {},
                  tooltip: 'Home',
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                  tooltip: 'Settings',
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                  tooltip: 'Notifications',
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                  tooltip: 'Profile',
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Colored IconButtons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  color: Colors.orange,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Different Sizes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  iconSize: 24,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  iconSize: 36,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  iconSize: 48,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Toggle IconButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: _isFavorite ? Colors.red : null,
                  iconSize: 36,
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
                const SizedBox(width: 10),
                Text(_isFavorite ? 'Favorited' : 'Not Favorited'),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Disabled IconButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: null, // Disabled
            ),
            const SizedBox(height: 30),
            const Text(
              'Volume Control Example',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.volume_down),
                  onPressed: () {
                    setState(() {
                      _volume = (_volume - 0.1).clamp(0.0, 1.0);
                    });
                  },
                ),
                Expanded(
                  child: Slider(
                    value: _volume,
                    onChanged: (value) {
                      setState(() {
                        _volume = value;
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  onPressed: () {
                    setState(() {
                      _volume = (_volume + 0.1).clamp(0.0, 1.0);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
