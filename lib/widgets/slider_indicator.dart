import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SliderIndicator extends StatelessWidget {
//   const SliderIndicator({super.key, required this.length, required this.index});
//   final int length;
//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         length,
//         (i) {
//           return AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             height: 5.h,
//             width: index == i ? 30.w : 5.w,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(39.r)),
//           );
//         },
//       )
//           .expand((element) => [
//                 element,
//                 SizedBox(
//                   width: 10.w,
//                 )
//               ])
//           .toList(),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

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
//       appBar: AppBar(
//         title: Text('Menu'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 3,
//                 ),
//                 itemCount: _expanded ? 6 : 2,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: Center(
//                       child: Text('Item $index'),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _expanded = !_expanded;
//               });
//             },
//             child: Text(_expanded ? 'Скрыть' : 'Раскрыть'),
//           ),
//         ],
//       ),
//     );
//   }
// }
