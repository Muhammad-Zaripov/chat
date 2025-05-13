import 'package:chat/utils/app_images.dart';
import 'package:chat/views/widgets/custom_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/add_history_widget.dart';
import '../widgets/history_widget.dart';
import 'in_chat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: false,
        actions: [SvgPicture.asset(AppImages.edit)],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFormFieldWidget(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
              controller: searchController,
              hintText: 'Search here..',
            ),
            SizedBox(height: 35),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  DashedCircleButton(),
                  HistoryWidget(),
                  HistoryWidget(),
                  HistoryWidget(),
                  HistoryWidget(),
                  HistoryWidget(),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InChatScreen()),
                      );
                    },
                    leading: Image.asset(AppImages.man),
                    title: Text(
                      'Smith Mathew',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Hi, David. Hope you’re doing....'),
                    trailing: Text(
                      DateTime.now().toIso8601String().split("T")[1],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
