// import 'package:flutter/material.dart';
// import 'package:counter_7/model/mywatchlists.dart';
// import 'package:counter_7/page/mywatchlists_page.dart';

// class WatchListDetails extends StatefulWidget {
//   WatchListDetails({Key? key}) : super(key: key);

//   @override
//   State<WatchListDetails> createState() => WatchListStateDetails();
// }

// class WatchListStateDetails extends State<WatchListDetails> {
//   Fields current_detail = Details.fetcher;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Watchlist Details'),
//         ),
//         body: FutureBuilder(
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.data == null) {
//                 return const Center(child: CircularProgressIndicator());
//               } else {
//                 if (!snapshot.hasData) {
//                   return Column(
//                     children: const [
//                       Text(
//                         "My Watchlists is empty :(",
//                         style:
//                             TextStyle(color: Color(0xff59A5D8), fontSize: 20),
//                       ),
//                       SizedBox(height: 8),
//                     ],
//                   );
//                 } else {
//                   return ListView.builder(
//                       itemCount: snapshot.data!.length,
//                       itemBuilder: (_, index) => Container(
//                             margin: const EdgeInsets.symmetric(
//                                 horizontal: 16, vertical: 12),
//                             padding: const EdgeInsets.all(20.0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(15.0),
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       color: Colors.black, blurRadius: 2.0)
//                                 ]),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   current_detail.title,
//                                   style: const TextStyle(
//                                     fontSize: 18.0,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text("Watched : " + current_detail.releaseDate),
//                                 Text("Release Date : " + current_detail.rating.toString()),
//                                 Text("Review : " + current_detail.watched.toString()),
//                                 Text("Rating : " + current_detail.review),
//                               ],
//                             ),
//                           ));
//                 }
//               }
//             }));
//   }
// }