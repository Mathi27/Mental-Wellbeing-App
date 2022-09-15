import 'package:flutter/material.dart';
import 'package:mentalhealthapp/utilities/emotions.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_task),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),

      ],),
      body: SafeArea(

        child: Column(children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Column(
             children: [
               //Greetings

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(

                     // Hi Mathi!
                     children: [
                       Text('Hi, Mathi!',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       SizedBox(height: 8,),
                       Text('15 Sep,2022',
                         style: TextStyle(color: Colors.blue[200]),),
                     ],
                   ),
                   //  Notification
                   Container(
                     decoration: BoxDecoration(color: Colors.blue[600],
                         borderRadius: BorderRadius.circular(12)
                     ),
                     padding: EdgeInsets.all(12),

                     child: Icon(Icons.notifications, color: Colors.white,
                     ),
                   )

                 ],
               ),
               SizedBox(height: 20,),
               //  Search bar
               Container(
                 decoration: BoxDecoration(
                     color: Colors.blue[600],
                     borderRadius: BorderRadius.circular(12)
                 ),
                 padding: EdgeInsets.all(12),
                 child: Row(children: [
                   Icon(Icons.search,
                     color: Colors.white,),
                   Text('Search',
                     style: TextStyle(
                       color: Colors.white,

                     ),
                   ),
                 ],
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('How do you feel',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 22,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Icon(Icons.more_horiz,
                     color: Colors.white,
                   ),
                 ],
               ),
               SizedBox(
                 height: 25,
               ),
               //  Emojies.!!!!!
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [

                   //  Bad,
                   Column(
                     children: [
                       EmotionsFace(
                         emotionFace: '😥️',
                       ),
                       Text("Bad",
                         style: TextStyle(color: Colors.white),),
                     ],
                   ),
                   Column(
                     children: [
                       EmotionsFace(
                         emotionFace: '🙂️',
                       ),
                       Text("Fine",
                         style: TextStyle(color: Colors.white),),
                     ],
                   ),
                   Column(
                     children: [
                       EmotionsFace(
                         emotionFace: '🤗️',
                       ),
                       Text("Well",
                         style: TextStyle(color: Colors.white),),
                     ],
                   ),
                   Column(
                     children: [
                       EmotionsFace(
                         emotionFace: '🤩️',
                       ),
                       Text("Excellent",
                         style: TextStyle(color: Colors.white),),
                     ],
                   ),
                   //  fine,
                   //  well,
                   //  excellent
                 ],),
             ],
           ),
         ),
         SizedBox(
           height: 25,
         ),
          Expanded(

              child: Container(
                padding: EdgeInsets.all(25),
                 color: Colors.grey[200],
                child: Center(
                  child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         //Excercise heading
                         Text("Excercises",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                         ),
                         Icon(Icons.more_horiz),
                       ],
                     ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                      child: Row(
                         children: [
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Flutter Tasks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                              SizedBox(
                                height: 5,
                              ),
                              Text("2 Tasks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 14,
                              ),)
                            ],
                          ),
                          Icon(Icons.more_horiz),
                        ],

                      ),


                    )
                   ]
                  ),
                ),
              ),
            ),

        ],

        ),
      ),
    );
  }
}