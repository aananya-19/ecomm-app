import 'package:emart_app/consts/consts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Title".text.fontFamily(semibold).color(darkFontGrey).make(),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Container(
              color: Colors.teal,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      
                      )
                    ),
                    child: Column(
                      children: [
                        "Message here...".text.size(16).white.make(),
                        10.heightBox,
                        "11:45 PM".text.color(whiteColor.withOpacity(0.5)).make()
                      ],
                    ),
                  ),
                ],
              ),
              )),

            10.heightBox,

            Row(children: [
              Expanded(child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: textfieldGrey,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: textfieldGrey,
                    )
                  ),
                  hintText: "Type a message...",
                ),
              )),
              IconButton(onPressed: (){}, icon: Icon(Icons.send, color: redColor,))
            ],).box.height(80).padding(EdgeInsets.all(12)).margin(EdgeInsets.only(bottom: 8)).make()
          ],
        ),
      ),
    );
  }
}