import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';

import '../../widgets/chat/my_message_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Mi amor ❤️"),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/34d511d1-98d4-456c-b726-9f62e4ac38f5/d45lit4-44434b38-7592-410e-8ea9-1cc03d242c96.jpg/v1/fill/w_771,h_554,q_75,strp/high_elf_female_avatar_by_graysun_d_d45lit4-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTU0IiwicGF0aCI6IlwvZlwvMzRkNTExZDEtOThkNC00NTZjLWI3MjYtOWY2MmU0YWMzOGY1XC9kNDVsaXQ0LTQ0NDM0YjM4LTc1OTItNDEwZS04ZWE5LTFjYzAzZDI0MmM5Ni5qcGciLCJ3aWR0aCI6Ijw9NzcxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.jPvYxapMBF__vYB2HqKxokPToCuCWyggAOceMZWoFhI"),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return (index % 2) == 0
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
              itemCount: 100,
            )),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
