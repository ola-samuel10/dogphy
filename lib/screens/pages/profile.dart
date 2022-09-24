import 'package:dogphy/screens/pages/home.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 90,
              backgroundImage: AssetImage('assets/imgs/poodle.png'),
            ),

          const   Text('James Alexdy', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),),
          const  Text('James_Alexdy@gmail.com', style: TextStyle( fontSize: 18),),
          const SizedBox(height: 25,),

                GestureDetector(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyHome()));
                  },
                  child: Container(
                          height: 45,
                          width: 320,
                          decoration:  BoxDecoration(
                                  border: Border.all(
                                width: 2,
                                color: Colors.amber,
                              ),
                               borderRadius: BorderRadius.circular(14),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.only( left:20.0),
                            child: Row(
                              children: const[
                                 Icon(Icons.home_outlined, color: Colors.amber,),
                                 SizedBox(width: 15,),
                                 Text('Home', style: TextStyle(fontSize: 17, color: Colors.amber,),)
                              ],
                            ),
                          ),
                        )
                ),
               const SizedBox( height: 20,),

               GestureDetector(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyHome()));
                  },
                  child: Container(
                          height: 45,
                          width: 320,
                          decoration:  BoxDecoration(
                                  border: Border.all(
                                width: 2,
                                color: Colors.amber,
                              ),
                               borderRadius: BorderRadius.circular(14),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.only( left:20.0),
                            child: Row(
                              children: const[
                                 Icon(Icons.location_city_outlined, color: Colors.amber,),
                                 SizedBox(width: 15,),
                                 Text('Address', style: TextStyle(fontSize: 17, color: Colors.amber,),)
                              ],
                            ),
                          ),
                        )
                ),
               const SizedBox( height: 20,),

               GestureDetector(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyHome()));
                  },
                  child: Container(
                          height: 45,
                          width: 320,
                          decoration:  BoxDecoration(
                                  border: Border.all(
                                width: 2,
                                color: Colors.amber,
                              ),
                               borderRadius: BorderRadius.circular(14),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.only( left:20.0),
                            child: Row(
                              children: const[
                                 Icon(Icons.settings, color: Colors.amber,),
                                 SizedBox(width: 15,),
                                 Text('Settings', style: TextStyle(fontSize: 17, color: Colors.amber,),)
                              ],
                            ),
                          ),
                        )
                ),
               const SizedBox( height: 20,),

               GestureDetector(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyHome()));
                  },
                  child: Container(
                          height: 45,
                          width: 320,
                          decoration:  BoxDecoration(
                                  border: Border.all(
                                width: 2,
                                color: Colors.amber,
                              ),
                               borderRadius: BorderRadius.circular(14),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.only( left:20.0),
                            child: Row(
                              children: const[
                                 Icon(Icons.update, color: Colors.amber,),
                                 SizedBox(width: 15,),
                                 Text('Update ', style: TextStyle(fontSize: 17, color: Colors.amber,),)
                              ],
                            ),
                          ),
                        )
                ),
               const SizedBox( height: 20,),

               GestureDetector(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyHome()));
                  },
                  child: Container(
                          height: 45,
                          width: 320,
                          decoration:  BoxDecoration(
                            color: Colors.amber,
                                  border: Border.all(
                                width: 2,
                                color: Colors.amber,
                              ),
                               borderRadius: BorderRadius.circular(14),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.only( left:20.0),
                            child: Row(
                              children: const[
                                 Icon(Icons.logout, color: Colors.amber,),
                                 SizedBox(width: 15,),
                                 Text('Log Out', style: TextStyle(fontSize: 17, color: Colors.white,),)
                              ],
                            ),
                          ),
                        )
                ),
               const SizedBox( height: 20,)

                

          ],

      ),
    );
  }
}
