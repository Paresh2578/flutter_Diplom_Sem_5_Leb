import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PaginatedListView extends StatefulWidget {
  @override
  _PaginatedListViewState createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  List<dynamic> data = [];
  bool isLoading = false;
  int page = 1;
  bool hasMore = true;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        if (!isLoading && hasMore) {
          fetchData(); // Fetch more data when scrolled to the bottom
        }
      }
    });

    fetchData(); // Initial data load
  }

  // Fetch data from the API
  Future<void> fetchData() async {
    if (isLoading || !hasMore) return;

    setState(() {
      isLoading = true;
    });

    final String url =
        'https://jsonplaceholder.typicode.com/posts?_page=$page&_limit=10';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> fetchedData = json.decode(response.body);

      setState(() {
        if (fetchedData.isEmpty) {
          hasMore = false;
        } else {
          data.addAll(fetchedData);
          page++;
        }
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Build the list of data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paginated ListView'),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: data.length + 1, // Add 1 for the loading indicator
        itemBuilder: (context, index) {
          if (index == data.length) {
            // Display loading indicator at the bottom
            if (isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (!hasMore) {
              return Center(child: Text('No more data.'));
            }
            return SizedBox.shrink();
          }

          var post = data[index];

          return ListTile(
            title: Text(post['title']),
            subtitle: Text(post['body']),
          );
        },
      ),
    );
  }
}
