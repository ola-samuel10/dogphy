import 'package:dogphy/screens/pages/properties.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              card(
                img: 'assets/imgs/herding.png',
                text: 'BullDog',
                tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
                age: '2 Years',
                gender: 'Male',
              ),
              const SizedBox( height: 20,),
              card(
                img: 'assets/imgs/herding.png',
                text: 'BullDog',
                tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
                age: '2 Years',
                gender: 'Male',
              ),
      
               const SizedBox( height: 20,),
              card(
                img: 'assets/imgs/herding.png',
                text: 'BullDog',
                tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
                age: '2 Years',
                gender: 'Male',
              ),
      
               const SizedBox( height: 20,),
              card(
                img: 'assets/imgs/herding.png',
                text: 'BullDog',
                tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
                age: '2 Years',
                gender: 'Male',
              ),

               const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
             const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
             const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
             const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
             const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
             const SizedBox( height: 20,),
            card(
              img: 'assets/imgs/herding.png',
              text: 'BullDog',
              tet: 'Poodle is extremely intelligent and\n  easily trained, agile and graceful as \n well as smart, and enjoy exceling in \n a variety of canine sports.',
              age: '2 Years',
              gender: 'Male',
            ),
            
            ],
          ),
        ),
      ),
    );
  }

  Widget card({String? img, text, tet, age, gender}) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.amber,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('$img'),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  '$text',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                 const SizedBox(height: 6),
                 Text(
                  '$tet ',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                 const SizedBox(height: 6),
                Row(
                  children: [
                    Row(
                      children:  [
                        Icon(Icons.dataset, color: Colors.amber,),
                        Text(
                          '$age',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Row(
                      children:  [
                        Icon(Icons.close_fullscreen, color: Colors.amber,),
                        Text(
                          '$gender',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
                 const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyProperty()));
                      },
                      child: Container(
                        height: 30,
                        width: 120,
                        decoration:  BoxDecoration(color: Colors.amber,
                            //     border: Border.all(
                            //   width: 2,
                            //   color: Colors.amber,
                            // ),
                             borderRadius: BorderRadius.circular(16),
                            ),
                        child: const Center(
                            child: Text('Add to Cart',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15))),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
