import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserManagementScreen extends StatefulWidget {
  const UserManagementScreen({super.key});

  @override
  State<UserManagementScreen> createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends State<UserManagementScreen> {
  Future<QuerySnapshot>? _dataFuture;  // Nullable Future

  @override
  void initState() {
    super.initState();
    // Initialize _dataFuture when ready
    _dataFuture = FirebaseFirestore.instance.collection('Users').get(); // Example Firestore query
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Management ",style: Theme.of(context).textTheme.headlineMedium,)),
      body: FutureBuilder<QuerySnapshot>(
        future: _dataFuture,  // Use nullable Future here
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No data found'));
          }

          var data = snapshot.data!.docs;
          // Process and display the fetched data
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var item = data[index].data() as Map<String, dynamic>;
              return ListTile(
                title: Text(item['FullName'] ?? 'No name'),
                subtitle: Text(item['Email'] ?? 'No email'),
              );
            },
          );
        },
      ),
    );
  }
}
