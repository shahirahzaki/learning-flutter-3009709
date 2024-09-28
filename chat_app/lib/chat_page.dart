import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi User!'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {
              print('Logout Icon pressed');
            },
            icon: Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //container takes its child(column) size.
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'This is your message!',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200,
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              //container takes its child(column) size.
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'This is your message!',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200,
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //container takes its child(column) size.
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'This is your message!',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Image.network(
                    'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                    height: 200,
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   print("Button pressed");
      // }),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class ChatPage extends StatelessWidget {
//   const ChatPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text('Hi Pooja!'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 print('Icon pressed!');
//               },
//               icon: Icon(Icons.logout))
//         ],
//       ),
//       body: ListView(
//         children: [
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Container(
//               padding: EdgeInsets.all(24),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Hi, this is your message!',
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                   Image.network(
//                     'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
//                     height: 200,
//                   )
//                 ],
//               ),
//               margin: EdgeInsets.all(50),
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(12),
//                       topRight: Radius.circular(12),
//                       bottomLeft: Radius.circular(12))),
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               padding: EdgeInsets.all(24),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Hi, this is your message!',
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                   Image.network(
//                     'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
//                     height: 200,
//                   )
//                 ],
//               ),
//               margin: EdgeInsets.all(50),
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(12),
//                       topRight: Radius.circular(12),
//                       bottomLeft: Radius.circular(12))),
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               padding: EdgeInsets.all(24),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Hi, this is your message!',
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                   Image.network(
//                     'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
//                     height: 200,
//                   )
//                 ],
//               ),
//               margin: EdgeInsets.all(50),
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(12),
//                       topRight: Radius.circular(12),
//                       bottomLeft: Radius.circular(12))),
//             ),
//           ),
//           Container(
//             height: 100,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.send,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
//           )
//         ],
//       ),
//     );
//   }
// }
