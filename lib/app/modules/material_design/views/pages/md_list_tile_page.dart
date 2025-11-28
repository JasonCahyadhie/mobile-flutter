import 'package:flutter/material.dart';

class MdListTilePage extends StatefulWidget {
  const MdListTilePage({Key? key}) : super(key: key);

  @override
  State<MdListTilePage> createState() => _MdListTilePageState();
}

class _MdListTilePageState extends State<MdListTilePage> {
  bool _switch1 = false;
  bool _checkbox1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Basic ListTiles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            title: Text('Simple ListTile'),
          ),
          const ListTile(
            title: Text('With Subtitle'),
            subtitle: Text('This is a subtitle'),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'With Leading Icons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
          ),
          const ListTile(
            leading: Icon(Icons.send),
            title: Text('Sent'),
            subtitle: Text('5 messages'),
          ),
          const ListTile(
            leading: Icon(Icons.drafts),
            title: Text('Drafts'),
            subtitle: Text('2 messages'),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'With Trailing Widgets',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.photo),
            title: Text('Photo'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Music'),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Interactive ListTiles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            trailing: Switch(
              value: _switch1,
              onChanged: (value) {
                setState(() {
                  _switch1 = value;
                });
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.check_circle),
            title: const Text('Accept Terms'),
            trailing: Checkbox(
              value: _checkbox1,
              onChanged: (value) {
                setState(() {
                  _checkbox1 = value ?? false;
                });
              },
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Tappable ListTiles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Text('A'),
            ),
            title: const Text('Alice'),
            subtitle: const Text('Software Engineer'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Alice tapped')),
              );
            },
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Text('B'),
            ),
            title: const Text('Bob'),
            subtitle: const Text('Product Manager'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bob tapped')),
              );
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Three-line ListTile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('Meeting Tomorrow'),
            subtitle: Text(
              'Hi team, just a reminder about our meeting tomorrow at 10 AM. Please be on time.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            isThreeLine: true,
            trailing: Text('9:30 AM'),
          ),
        ],
      ),
    );
  }
}
