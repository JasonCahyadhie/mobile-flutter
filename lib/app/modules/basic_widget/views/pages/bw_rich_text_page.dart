import 'package:flutter/material.dart';

class BwRichTextPage extends StatelessWidget {
  const BwRichTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichText'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic RichText', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'World', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  TextSpan(text: '!'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Multiple Styles', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'This is '),
                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ', this is '),
                  TextSpan(text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: ', and this is '),
                  TextSpan(text: 'colored', style: TextStyle(color: Colors.red)),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Different Sizes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: 'Small', style: TextStyle(fontSize: 12)),
                  TextSpan(text: ' Medium', style: TextStyle(fontSize: 16)),
                  TextSpan(text: ' Large', style: TextStyle(fontSize: 24)),
                  TextSpan(text: ' XLarge', style: TextStyle(fontSize: 32)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('With Background', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'This has '),
                  TextSpan(
                    text: 'highlighted',
                    style: TextStyle(backgroundColor: Colors.yellow),
                  ),
                  TextSpan(text: ' text.'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Complex Example', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'Flutter ', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20)),
                  TextSpan(text: 'is an '),
                  TextSpan(text: 'open-source', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green)),
                  TextSpan(text: ' UI software development kit created by '),
                  TextSpan(text: 'Google', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  TextSpan(text: '.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
