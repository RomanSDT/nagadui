import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Nagad() ,
      debugShowCheckedModeBanner: false,
    ); //Materialapp
  }
}

class Nagad extends StatefulWidget{
  const Nagad({super.key});

  @override
  State<Nagad> createState() => _NagadState();
}
 class _NagadState extends State<Nagad>{
   var _currentindex =0 ;
   @override
   Widget build(BuildContext context) {
     return SafeArea(
         child: Scaffold(
           bottomNavigationBar: CurvedNavigationBar(
              index: 0,
              height: 25,
              color: Colors.white,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Colors.white,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds:800),
              onTap: (index){
                setState(() {
                  _currentindex = index;
                });
     },
             items: [
               Column(
                 children: [
                    Image.asset("images/nagad.png", height: 20,width: 24, ),
                    Text('Home', style: TextStyle(fontSize: 11)),
                 ],
               ),
               Column(
                 children: [
                   Image.asset("images/transactions.png",height: 20,width: 24,color: Colors.black54,),
                   Text('transactions', style: TextStyle(fontSize: 12)),
                 ],
               ),
               Column(
                 children: [
                   Image.asset("images/people.png",height: 20,width: 24, color: Colors.black54,),
                   Text('Contact', style: TextStyle(fontSize: 12)),
                 ],
               ),
               Column(
                 children: [
                   Image.asset("images/mynagad.png",height: 20,width: 24,color: Colors.black54,),
                   Text('My nagad', style: TextStyle(fontSize: 12)),
                 ],
               )
               ]),
             body: SingleChildScrollView(
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         padding: const EdgeInsets.only(top: 20) ,
                         height: 180,
                         width: MediaQuery.of(context).size.width,
                         decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/topbackground.png"),fit: BoxFit.cover)),
                         child: Container(
                           child: Column(
                             children: [
                               const Text("নগদ", style: TextStyle(fontSize: 46, color: Colors.white,fontWeight: FontWeight.bold ),),
                               const Text("ডাক বিভাগের ডিজিটাল লেনদেন",style: TextStyle(fontSize: 14,color: Colors.white),),
                               SizedBox(height: 25,),
                               Container(
                                 width: MediaQuery.of(context).size.width *0.5,
                                 alignment: Alignment.center,
                                   decoration: const BoxDecoration(color: Colors.white,
                                     borderRadius: BorderRadius.all(Radius.circular(30))),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          Image.asset("images/nagad.png",width: 24,height: 24,),
                                          const SizedBox(width: 6,),
                                          const Align(alignment: Alignment.center,
                                          child: Text("ব্যালেন্স জানতে ট্যাপ করুন",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.bold),)),
                                        ],
                                      ),

                                    
                               )
                             ],

                           ),
                         ),
                       )
                     ],
                   ),
                   const SizedBox(height: 10,),
                   const Row(
                     children: [
                       SizedBox(width: 10,),
                        Text("সার্ভিস সমূহ",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold), ),

                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       SizedBox(width: 15,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child:Image.asset("images/sendmoney.png"),
                             
                           ),
                           SizedBox(height: 6,),
                           Text("Send Money",style: TextStyle(fontSize: 12)),
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/cashout.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Cash Out",style: TextStyle(fontSize: 12))
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/transfer.png"),
                           ),
                           SizedBox(height: 6,),
                           const Text("Rechage",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(

                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/sendmoney.png"),
                           ),
                           SizedBox(height: 6,),
                            Text("Add Money",style: TextStyle(fontSize: 12)),
                         ],
                       ),
                       SizedBox(width: 15,),
                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       SizedBox(width: 20,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/transfer.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Transfer",style: TextStyle(fontSize: 12))
                             ],
                           ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/cashout.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Cash Out", style: TextStyle(fontSize: 12)),
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/more.png"),
                           ),
                           SizedBox(height: 6,),
                           const Text("More",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                         ],
                       ),
                       const SizedBox(height: 10,),
                        const Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("পেমেন্ট",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),),
                          ],
                        ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       SizedBox(width: 15,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/merchantpay.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Marchent Pay",style: TextStyle(fontSize: 12)),
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/billpay.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Bill Pay",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/emi.png"),
                           ),
                           SizedBox(height: 6,),
                           const Text("EMI Pay",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 10,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/mela.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Nagad mela",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 15,),
                     ],
                   ),
                   const SizedBox(height: 10,),
                   const Row(
                     children: [
                       SizedBox(width: 10,),
                       Text("অন্যান্য",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   const SizedBox(height: 15,),
                   Row(
                     children: [
                       SizedBox(width: 10,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/contact.png"),
                           ),
                          SizedBox(height: 6,),
                           Text("Contact",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/calculator.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Calculator",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/limit.png"),
                           ),
                           SizedBox(height: 6,),
                           const Text("Limit",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                      SizedBox(width: 14,),
                       Column(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width*0.2,
                             height: MediaQuery.of(context).size.width*0.2,
                             child: Image.asset("images/donation.png"),
                           ),
                           SizedBox(height: 6,),
                           Text("Donation",style: TextStyle(fontSize: 12),)
                         ],
                       ),
                       SizedBox(width: 15,),

                     ],
                   ),
                   const SizedBox(height: 30,),
                     ],
                   )

               )
             ),

     
     );
   }
 }