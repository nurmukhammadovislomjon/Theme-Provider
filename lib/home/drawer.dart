import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme/theme_provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Center(
        child: CupertinoSwitch(
          value: Provider.of<ThemeProvider>(context).getDarkMode,
          onChanged: (value) {
            Provider.of<ThemeProvider>(
              context,
              listen: false,
            ).toggleTheme();
          },
        ),
      ),
    );
  }
}
