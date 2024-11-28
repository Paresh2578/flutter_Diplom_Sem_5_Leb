import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostDetailScreen extends StatelessWidget {
  final int postId;
  final String? extraParam;

  const PostDetailScreen({Key? key, required this.postId, this.extraParam})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<Map<String, dynamic>> fetchPost(int id, {String? extraParam}) async {
      final String url = 'https://jsonplaceholder.typicode.com/posts/$id';

      final Uri uri = Uri.parse(url).replace(queryParameters: {
        if (extraParam != null) 'extra_param': extraParam,
      });

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load post');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Post Detail'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchPost(postId, extraParam: extraParam),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data found.'));
          } else {
            var post = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title: ${post['title']}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Body: ${post['body']}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
