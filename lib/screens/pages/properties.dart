import 'package:dogphy/utils/colors.dart';
import 'package:flutter/material.dart';

class MyProperty extends StatefulWidget {
  const MyProperty({Key? key}) : super(key: key);

  @override
  State<MyProperty> createState() => _MyPropertyState();
}

class _MyPropertyState extends State<MyProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.txtblack,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(170.0),
                    bottomRight: Radius.circular(170.0)),
                image: const DecorationImage(
                  image: AssetImage('assets/imgs/poodle.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Poodle',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                      'Poodle is extremely intelligent and  easily trained, agile and graceful as well as smart,  and enjoy exceling in a variety of canine sports.'),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Years',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        '2 Years',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Cinnamon',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\$1500.00',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return Dialog(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children:   [
                                 const SizedBox(height: 50,),
                                 const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    backgroundImage:
                                        AssetImage('assets/imgs/poodle.png'),
                                  ),
                                    const SizedBox(height: 10,),
                                 const Text('Transaction Successful', style: TextStyle( fontSize: 20,),),
                                        const SizedBox(height: 30,),
                                  Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 226, 156, 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      height: 50,
                      width: 200,
                      child: const Center(
                        child: Text('Back to home',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center),
                      ),
                    ),

                    const SizedBox(height: 50,),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 226, 156, 5),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      height: 50,
                      width: 200,
                      child: const Center(
                        child: Text('Checkout',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
