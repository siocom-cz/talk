import 'package:flutter/material.dart';
import 'package:talk/core/connection/client.dart';
import 'package:talk/core/connection/client_manager.dart';
import '../../context_menu/context_menu.dart' as context_menu;

class ServerListClientContextMenu extends StatelessWidget {
  final Widget child;
  final Client client;
  const ServerListClientContextMenu({super.key, required this.child, required this.client});

  @override
  Widget build(BuildContext context) {
    return context_menu.ContextMenuRegion(
      contextMenu: context_menu.ContextMenu(
          entries: <context_menu.ContextMenuEntry> [
            context_menu.MenuItem(
                label: 'Disconnect',
                value: 'disconnect',
                icon: Icons.power_settings_new,
                isDisabled: client.connection.state != ClientConnectionState.connected
            ),
            // Drop server
            const context_menu.MenuItem(
                label: 'Remove Server',
                value: 'remove',
                icon: Icons.delete,
                isDisabled: false
            ),
          ]
      ),
      onItemSelected: (value) async {
        if(value == 'remove') {
          ClientManager.of(context, listen: false).removeClient(client);
        } else if(value == 'disconnect') {
          ClientManager.of(context, listen: false).toggleReconnection(client, false);
          client.disconnect();
        }
      },
      child: child,
    );
  }

}