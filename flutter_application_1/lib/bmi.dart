import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/result.dart';

class calculate_bmi extends StatefulWidget{
  @override
  State<calculate_bmi> createState() => _calculate_bmiState();
}

class _calculate_bmiState extends State<calculate_bmi> {
  int age=20;
  int weight=60;
  int height=180;
  bool ismale=true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.background,
      appBar: AppBar(title: Text("Bmi Calculater",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
      centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [Expanded(child:Row(children: [Expanded(child: GestureDetector(
            onTap: () {
              setState(() {
                ismale=true;
              });
            },
            child: Container
            (decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:(ismale)?Appcolors.primary :Appcolors.second)
            ,child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.male,color: Colors.white,size: 95,),Text("male",style: TextStyle(color: Colors.white),)],),),
          )
          ),
          SizedBox(width: 10,),
          Expanded(child: GestureDetector(
            onTap: () {
              setState(() {
                ismale=false;
              });
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: (!ismale)?Appcolors.primary :Appcolors.second),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.female_outlined,color: Colors.white,size: 95,),Text("female",style: TextStyle(color: Colors.white),)],),),
          ))
          ],
          )
           
          ,
          ),
          Expanded(child:  Container
          (width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 9),
            color: Appcolors.second,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("Height",style: TextStyle(color: Colors.grey,fontSize: 13)
              ,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
                children: [Text(height.toString(),style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)
                ,),Text("cm",style: TextStyle(color: Colors.grey,fontSize: 14),)]
                ,),Slider(value: height.toDouble(),
                min: 80,
                max: 220,
                activeColor: Appcolors.primary,
                inactiveColor: Colors.white
                , onChanged: (value){
                  setState(() {
                    height=value.toInt();
                  });
                })
              ],
              ),
              )
          ,),
          Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Container  (
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Appcolors.second),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [Text("weight",style: TextStyle(color: Colors.white,fontSize: 15),
                  
                  ),SizedBox(height: 4,),Text(weight.toString(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(children: [FloatingActionButton.small(onPressed: (){
                       if(weight>0){
                       setState(() {
                      weight--;
                    });
                    }
                    },backgroundColor: Appcolors.accent,
                    child: Icon(Icons.remove,color: Colors.white)
                    ,),SizedBox(width: 20,),FloatingActionButton.small(onPressed: (){
                    setState(() {
                      weight++;
                    });
                    },backgroundColor: Appcolors.accent,
                    child: Icon(Icons.add,color: Colors.white,), ),
                    ],
                    ),
                  )]
                  ,
                   ) ),
        ),SizedBox(width: 10,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Appcolors.second),
         child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("age",style: TextStyle(color: Colors.white,fontSize: 15),
                  
                  ),SizedBox(height: 4,),Text(age.toString(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Padding(padding: const EdgeInsets.all(2),
                  child: Row(children: [FloatingActionButton.small(onPressed: (){
                    if(age>0){
                       setState(() {
                      age--;
                    });
                    }
                   
                  },backgroundColor: Appcolors.accent,
                    child: Icon(Icons.remove,color: Colors.white)
                    ,),SizedBox(width: 20,),FloatingActionButton.small(onPressed: (){
                      setState(() {
                        age++;
                      });
                    },backgroundColor: Appcolors.accent,
                    child: Icon(Icons.add,color: Colors.white,),
                    
                     
                    ),],),
                  )
                  ],),)
                )
        ],
        
          ) 
          ),SizedBox(height: 10,),SizedBox(width: double.infinity,
          height: 50,
          
          child: 
          ElevatedButton(onPressed: () { 
            double res=weight/(height*height*.0001);
            Navigator.push( context,
                        MaterialPageRoute(builder: (context) =>  result(res:res,)),
  );
           },
          style: ElevatedButton.styleFrom(
            backgroundColor: Appcolors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
           child: Text("calculate"),),)
           
               ],
          ),
      ),
    );
  }
}