import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk/core/notifiers/current_client_provider.dart';

import '../../../core/models/models.dart';
import '../../../core/notifiers/theme_controller.dart';
import '../../voice_room/core/models/voice_room_current.dart';

class TextRoomHeader extends StatefulWidget {
  final Channel channel;

  const TextRoomHeader({super.key, required this.channel});

  @override
  State<TextRoomHeader> createState() => TextRoomHeaderState();
}

class TextRoomHeaderState extends State<TextRoomHeader> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    CurrentClientProvider currentClientProvider = Provider.of<CurrentClientProvider>(context);

    // First line: Title with badge of how many pinned messages is there
    // Second line: Description of the current room
    // On hover, it will show Row with pinned messages

    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.channel.name ?? "<No name>",
              ),
              Consumer<VoiceRoomCurrent>(
                builder: (BuildContext context, VoiceRoomCurrent value, Widget? child) {
                  if(value.currentChannel != null && value.currentChannel!.id == widget.channel.id) {
                    return IconButton(onPressed: () => VoiceRoomCurrent.of(context, listen: false).leaveVoice(), icon: const Icon(Icons.call_end));
                  }

                  return IconButton(onPressed: () => VoiceRoomCurrent.of(context, listen: false).joinVoice(currentClientProvider.selectedClient, widget.channel), icon: const Icon(Icons.call));
                },
              ),
            // Colored Box with icon on left, number on right
            // const SizedBox(width: 8.0),
            // Container(
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(4),
            //     ),
            //     child: const Padding(
            //         padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
            //         child: Row(children: <Widget>[
            //           Icon(Icons.push_pin, size: 11.0),
            //           SizedBox(width: 4.0),
            //           Text('5'),
            //         ])))
            ]
          ),
          const Divider(),
          Text(
             widget.channel.description ?? "<No description>",
            style: ThemeController.theme(context).textTheme.bodySmall,
          ),
          // const Divider(height: 1),
          // Row with pinned messages
          // if (_isHovering) ...[
          //   const Divider(height: 1),
          //   const Row(children: [])
          // ]
        ]),
      ),
    );
  }
}
