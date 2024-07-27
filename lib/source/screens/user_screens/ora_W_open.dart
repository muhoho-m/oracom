// // weekly reports and to do list view
// import "dart:math";
// // variables in flutter
// class Mwanzo {
//   String? majina = "kioko"; // can be null or string. nullable type
//   String kijina = "kiono"; // non-nullable. cannot be null.
//
//   final jina = "Mkenya";
//   final mwaka = 2024;
//   var joto = 17.8;
//   var kaonties = ["kiambu", "nakuru", "nairobi", "kisumu", "nyandarua"];
//   var picha = {
//     'tags': ["nakuru"],
//     "url": "assets/icon/lelcon.png"
//   };
//   child: Row(
//   mainAxisSize: MainAxisSize.max,
//   children: [
//   // date display on the right for navigation
//
//   Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "June ",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "July Week 1",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "July Week 2",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "July Week 3",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "July Week 4",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//
//   ]),
//   const VerticalDivider(),
//   Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//   TextButton(
//   onPressed: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => const OraViewDeep()));
//   },
//   child: Text(
//   "Monday 5th",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "Tuesday 6th",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "Wednesday 7th",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "Thursday 8th",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   TextButton(
//   onPressed: () {},
//   child: Text(
//   "Friday 9th",
//   style: Theme.of(context).textTheme.bodyLarge,
//   ),
//   ),
//   ]),
//
//
//
//   // Second part of screen displays a container
//   // with name and text
//
//   ],
//   ),
// // control flow statements
// //   if(mwaka >= 2020) {
// //     print("nyakati za ruto");
// //   } else if(mwaka >= 2018) {
// //     print("nyakati za uhuru");
// //   }
// //
// //   for (final kaonti in kaonties) {
// //     print(kaonti);
// //   }
// //
// //   for (int mwezi = 1; mwezi <= 12; mwezi++){
// //     print(mwezi);
// //   }
// //
// //   while (mwaka < 2025) {
// //     mwaka += 1;
// //   }
//
// }