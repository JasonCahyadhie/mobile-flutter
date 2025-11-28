import 'package:flutter/material.dart';

class MdDividerPage extends StatelessWidget {
  const MdDividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Horizontal Dividers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Item 1'),
            const Divider(),
            const Text('Item 2'),
            const Divider(thickness: 2),
            const Text('Item 3'),
            const Divider(thickness: 3, color: Colors.blue),
            const Text('Item 4'),
            const Divider(
              thickness: 2,
              color: Colors.red,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
            const Text(
              'Vertical Dividers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Left'),
                  VerticalDivider(),
                  Text('Middle'),
                  VerticalDivider(thickness: 2, color: Colors.blue),
                  Text('Right'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'In Lists',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.inbox),
                    title: Text('Inbox'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.send),
                    title: Text('Sent'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.drafts),
                    title: Text('Drafts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
