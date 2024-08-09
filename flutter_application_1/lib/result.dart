import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/colors.dart';

class result extends StatelessWidget {
   result({super.key, required this.res});
final double res;
 late Color? statuscolor=Colors.white;
   getStatus(){
  if(res<=18.5){
     statuscolor=Colors.yellow;
    return "Underweight";
    // ignore: dead_code
   
  }else if(res<=24.9){
     statuscolor=Colors.green;
    return "Normal";
    // ignore: dead_code
   

  }else if(res<=39){
       statuscolor=Color.fromARGB(255, 235, 137, 169);
    return "Overweightl";
    // ignore: dead_code
 

  }else{
    statuscolor=Colors.red;
    return "Obese";
    // ignore: dead_code
    

  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Appcolors.background,
      appBar: AppBar(
      backgroundColor: Appcolors.background,
      foregroundColor: Colors.white,
      ),
      body:
       Padding(
         padding: const EdgeInsets.all(12),
         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Your result",style: TextStyle(color: Colors.white,fontSize: 29),),SizedBox(height: 25,),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(14),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Appcolors.second,),
              
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [Column(
                children: [Text( getStatus(),style: TextStyle(color: statuscolor,fontSize: 25,fontWeight: FontWeight.w400),
                 ),SizedBox(height: 49,),
                  Text(res.toStringAsFixed(2),style: TextStyle(fontSize: 48,fontWeight: FontWeight.w300,color: Colors.white),),
                ],
              ),SizedBox(height: 10,)
            ]
            
            ,),
            
            ),
            
          ),SizedBox(width: 320,
          height: 65,
          
          child: 
           Padding(
             padding: const EdgeInsets.all(8),
             child: ElevatedButton(onPressed: (){
              
                     },
                     style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
             child: Text("return")),
           ),)
              
          
          
          ]),
       ),
    );
  }
}