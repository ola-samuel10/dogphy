import 'package:dogphy/screens/pages/category.dart';
import 'package:dogphy/screens/pages/properties.dart';
import 'package:dogphy/utils/colors.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // int catIndex = 0;

  List<String> image = [
    'hound dog.png',
    'sporting.png',
    'white.jpg',
    'splash.png',
    'sporting.png'
  ];

  List<String> tet = [
    'hodog.png',
    'sporting.png',
    'white.jpg',
    'splash.png',
    'sporting.png'
  ];
  List<String> text = ['Hound', 'Spourting', 'Cupboard', 'Shelf', 'Dining'];
  TextEditingController _dob = TextEditingController();
  var selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dob.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Hello James'),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find your favourite dog',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.menu),
                    hintText: 'Search',
                    filled: true,
                    isDense: true,
                    fillColor: Color.fromARGB(255, 255, 250, 250),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)))),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Category',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                            Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyProperty()));
                        },
                        child: Container(
                          height: 80,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.txtblack,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/${image[index]}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(child: Text(text[index])),
                            ],
                          ),
                        ),),
                  ),
                ),
              ),
             
              
            
              
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 190 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyProperty()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(tet[index]),
                                      Row(
                                        children:  [
                                          const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                          Icon(Icons.star, color: AppColor.primary, size: 20, )
                                        ],
                                      ),
                                      const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

            const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Bull Dogs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
              
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('German Sheperd',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Police Dog',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                          // setState(() => catIndex = index);
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Rot Willer',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),


               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Australias',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
             
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Brabel',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
               SizedBox(height: 20,),
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Pets Dogs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
               SizedBox(height: 20,),
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Police Dog',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
               SizedBox(height: 20,),
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Local Dogs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
              
               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
               const SizedBox(
                height: 20,
              ),
             
            


              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Puppies',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),

               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Adults',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),

               SizedBox(
                height: 180 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image.length,
                    (index) => GestureDetector(
                        onTap: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Category()));
                        },
                        child: Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,

                                // margin: const EdgeInsets.only(right: 15 ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/imgs/${image[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(tet[index]),
                                    Row(
                                      children:  [
                                        const Text('4.2' , style: TextStyle(  fontSize: 15,)),
                                        Icon(Icons.star, color: AppColor.primary, size: 20, )
                                      ],
                                    ),
                                    const Text('\$1500.00', style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              

              // Container(
              //   height: 150,
              //   width: 120,
              //   margin: const EdgeInsets.only(right: 10),
              //   decoration: BoxDecoration(
              //     color: AppColor.txtblack,
              //     image: const DecorationImage(
              //       image: AssetImage('assets/imgs/poodle.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: const Text('rting'),
              // ),
              // TextFormField(
              //   readOnly: true,
              //   controller: _dob,
              //   onTap: () => _selectDate(context),
              // ),
              // TextButton(
              //   onPressed: () {
              //     showModalBottomSheet(
              //         context: context,
              //         backgroundColor: Colors.transparent,
              //         builder: (_) {
              //           return Container(
              //             height: 200,
              //             width: 700,
              //             decoration: const BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(20),
              //                 topRight: Radius.circular(20),
              //               ),
              //             ),
              //             child: Column(
              //               children: const [
              //                 Text('This is my btootm sheet'),
              //               ],
              //             ),
              //           );
              //         });
              //   },
              //   child: const Text('showbottom sheet'),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
