import 'package:flutter/material.dart';
import 'package:talk/core/models/models.dart' as models;

// This component will render a message in a room
// The message will have Avatar, name, time and message
// It will support editing and deleting messages
class ChannelMessage extends StatefulWidget {
  final models.Message message;
  final models.User user;
  final void Function() onEdit;
  final void Function() onDelete;

  const ChannelMessage({
    super.key,
    required this.message,
    required this.user,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  ChannelMessageState createState() => ChannelMessageState();
}

class ChannelMessageState extends State<ChannelMessage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isHovered ? Colors.grey : Colors.transparent,
          ),
        ),
        child: Stack(
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: widget.user.avatar != null ? NetworkImage(widget.user.avatar!) : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.user.displayName ?? '<No name>'),
                        Text(widget.message.createdAt ?? '<No time>'),
                      ],
                    ),
                    Text(widget.message.content ?? '<No message>'),
                  ],
                ),
              ),
            ],
          ),
          if (_isHovered)
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: widget.onEdit,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: widget.onDelete,
                    ),
                  ],
                ),
              ),
          ]
        ),
      ),
    );
  }
}