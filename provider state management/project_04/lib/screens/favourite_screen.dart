import 'package:flutter/material.dart';
import 'package:project_04/providers/favourite_provider.dart';
import 'package:project_04/screens/theme_screen.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Screen'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThemeScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 8),
              child: Icon(size: 38, Icons.navigate_next),
            ),
          ),
        ],
      ),
      body: Consumer<FavouriteProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: 11,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  if (value.selectedItem.contains(index)) {
                    value.removeItemFromList(index);
                  } else {
                    value.addItemToList(index);
                  }
                },
                title: Text('list $index'),
                trailing: value.selectedItem.contains(index)
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline),
              );
            },
          );
        },
      ),
    );
  }
}
