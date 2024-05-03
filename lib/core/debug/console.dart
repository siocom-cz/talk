// Console is a overlay that can be used to display messages, errors, and warnings.
// It can be used to control the audio volume, etc...

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talk/core/audio/audio_manager.dart';
import 'package:talk/core/storage/storage.dart';

import '../notifiers/theme_controller.dart';

class Console extends StatefulWidget {
  const Console({super.key});

  @override
  State<StatefulWidget> createState() => ConsoleState();
}

class ErrorItem {
  final String title;
  final String message;

  ErrorItem(this.title, this.message);
}

class ConsoleState extends State<Console> {
  bool _isVisible = false;
  List<ErrorItem> _errors = [];

  @override
  void initState() {
    super.initState();
    HardwareKeyboard.instance.addHandler(_keyboardToggleConsole);
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      _errors.add(ErrorItem(details.exceptionAsString(), details.stack.toString()));
      AudioManager.playSingleShot("Master", AssetSource("audio/error.wav"));
      if(originalOnError != null) {
        originalOnError(details);
      }
    };
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_keyboardToggleConsole);
    super.dispose();
  }

  bool _keyboardToggleConsole(KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.f12 && event is KeyDownEvent) {
      setState(() {
        _isVisible = !_isVisible;
      });
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      child: _isVisible ? _buildConsole() : const SizedBox.shrink(),
    );
  }

  Widget _buildConsole() {
    AudioManager audioManager = AudioManager();
    final scheme = ThemeController.scheme(context);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: scheme.surfaceContainerHighest.withOpacity(0.99)),

      // Tabs with different sections, like Audio, Network, etc...
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Console", style: TextStyle(fontSize: 20)),
              Text("Select a tab to view more information",
                  style: TextStyle(fontSize: 16)),
            ],
          ),
          Divider(),
          // Audio section
          DefaultTabController(
            length: 4,
            child: Expanded(
              child: Column(
                children: [
                  TabBar(
                    // The tab is at the top of the screen
                    tabs: [
                      Tab(text: "Errors"),
                      Tab(text: "Audio"),
                      Tab(text: "Network"),
                      Tab(text: "Settings"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Error tab with error messages, warnings, etc...
                              Expanded(
                                child: ListView(
                                  children: _errors.reversed.map((e) => ListTile(
                                    title: SelectableText(e.title),
                                    subtitle: SelectableText(e.message),
                                  )).toList(),
                                ),
                              ),
                            ]
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Audio tab with volume control, show audio devices, connected devices, each audio source
                              Expanded(
                                child: ListView(
                                  children: [
                                    ListTile(
                                      title: Text("Master Volume"),
                                      subtitle: ListenableBuilder(
                                        listenable: audioManager.masterVolume,
                                        builder: (context, child) {
                                          return Slider(
                                            value: audioManager.masterVolume.value,
                                            onChanged: (value) {
                                              audioManager.masterVolume.value = value;
                                              Storage().write("masterVolume", value.toString());
                                            },
                                            max: 1.0,
                                            min: 0.0,
                                            divisions: 50,
                                            label: "${(audioManager.masterVolume.value * 100).round()}%",
                                          );
                                        }
                                      ),
                                    ),
                                    ListTile(
                                      title: Text("Music Volume"),
                                      subtitle: Slider(
                                        value: 0.5,
                                        onChanged: null,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text("Sound Effects Volume"),
                                      subtitle: Slider(
                                        value: 0.5,
                                        onChanged: null,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text("Voice Volume"),
                                      subtitle: Slider(
                                        value: 0.5,
                                        onChanged: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          ),
                      Text("Network"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          DropdownMenu<ThemeItem>(
                            label: Text("Theme"),
                            dropdownMenuEntries: ThemeController.themes.map((e) => DropdownMenuEntry(value: e, label: e.name)).toList(),
                            initialSelection: ThemeController.themes.firstWhere((element) => element.name == ThemeController.of(context).currentThemeName),
                            onSelected: (value) {
                              if(value != null) {
                                ThemeController.of(context, listen: false).setTheme(value.value);
                                Storage().write("theme", value.name);
                              }
                            },
                            enableSearch: false,
                            enableFilter: false,
                          )
                        ],
                      )
                    ]
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
