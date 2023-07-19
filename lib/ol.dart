import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _expanded = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//                 height: _expanded ? null : 100,
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 3,
//                   ),
//                   itemCount: _expanded ? 6 : 2,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Center(
//                         child: Text('Item $index'),
//                       ),
//                     );
//                   },
//                 )),
//           ),
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             height: _expanded ? 60 : null,
//             child: ElevatedButton(
//               child: Text(_expanded ? 'Скрыть' : 'Раскрыть'),
//               onPressed: () {
//                 setState(() {
//                   _expanded = !_expanded;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
