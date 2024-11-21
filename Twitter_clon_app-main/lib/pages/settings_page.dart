import 'package:aplicaccion_2/components/my_settings_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplicaccion_2/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        foregroundColor: Theme.of(context).colorScheme.primary,
        ),

        body: Column(
          children: [
            MySettingsTitle(
            title: "Dark Mode", 
            action: CupertinoSwitch(
                onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
                value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              ),)
          ],
        ),
    );
  }
}