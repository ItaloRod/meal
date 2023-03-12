import 'package:flutter/material.dart';

import '../models/settings.dart';
import '../widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;
  final Function(Settings) onSettingsChanged;
  const SettingsScreen(
      {required this.onSettingsChanged, required this.settings, Key? key})
      : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    void Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configurações'),
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                      'Sem Glúten',
                      'Só exibe refeições sem glúten',
                      settings.isGlutenFree,
                      (value) => settings.isGlutenFree = value),
                  _createSwitch(
                      'Sem Lactose',
                      'Só exibe refeições sem lactose',
                      settings.isLactoseFree,
                      (value) => settings.isLactoseFree = value),
                  _createSwitch('Vegana', 'Só exibe refeições veganas',
                      settings.isVegan, (value) => settings.isVegan = value),
                  _createSwitch(
                      'Vegetariana',
                      'Só exibe refeições vegetarianas',
                      settings.isVegetarian,
                      (value) => settings.isVegetarian = value)
                ],
              ),
            )
          ],
        ));
  }
}
