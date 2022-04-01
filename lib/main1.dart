import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Client client = Client();

  client
          .setEndpoint('https://192.168.1.2/v1') // Your Appwrite Endpoint
          .setProject('money_manager') // Your project ID
          .setSelfSigned(
              status:
                  true) // For self signed certificates, only use for development
      ;

// Register User
  Account account = Account(client);

  User user = await account.create(
      userId: 'unique()',
      email: 'cr.vanvu2@gmail.com',
      password: 'password',
      name: 'Vu Pham');

// Subscribe to files channel
  final realtime = Realtime(client);
  final subscription = realtime.subscribe(['files']);

  subscription.stream.listen((response) {
    if (response.event == 'storage.files.create') {
// Log when a new file is uploaded
      print(response.payload);
    }
  });
}
