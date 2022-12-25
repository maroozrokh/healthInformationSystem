import 'package:dartpro1/dartpro1.dart' as dartpro1;
import 'dart:io';
import 'classes/patients.dart';
import 'dart:math';
String ?name1,pId1,dId1,sId1,diagnose1,part1;
List<Patient> list = [];


void main(List<String> arguments) {
  // print('Hello world: ${dartpro1.calculate()}!');

  print('hello to roozrokh hospital information system ');

  bool bl = true;
  while(bl){
  print('please enter your option:1-add 2-show 3-delete 4-update 5-search ');
  String? options = stdin.readLineSync();
  // Random random = Random();
  // int randNum = random.nextInt(100000)+1000;
  int num = 0;

  
  switch (options) {
    case '1':
    print('hi add');

  print('please enter your option:1-patient 2-physicion 3-personel');
  String? inneroption = stdin.readLineSync();
        switch(inneroption){
          case '1':   
          var pt =  pAdd(); 
          list.add(pt);
                
            break;
          case '2':

          
          
            break;
          case '3':
          
          
            break;

        }
      
      break;


    case '2':
        

      
          print('please enter your option:1-patient 2-physicion 3-personel');
          String? inneroption1 = stdin.readLineSync();
        switch(inneroption1){
          case '1':   
              for(var i in list){
              print(i);
          }
          
            break;
          case '2':

          
          
            break;
          case '3':
          
          
            break;

        }

      
      break;

    case '3':
  print('please enter your option:1-patient 2-physicion 3-personel');
    String? inneroption3 = stdin.readLineSync();
          switch(inneroption3){

          case '1':   

          
      
        
          
            break;
          case '2':

          
          
            break;
          case '3':
          
          
            break;

        }   
          
      
      break;

    case '4':
        print('hi update');

      
      break;

    case '5':
        print('please enter your option:1-patient 2-physicion 3-personel');
        String? inneroption3 = stdin.readLineSync();
         


        switch(inneroption3){

          case '1':  
          print('entere your keyword to search') ;

           String? searchItem1 = stdin.readLineSync();
          search(searchItem1!);
      
        
          
            break;
          case '2':

          
          
            break;
          case '3':
          
          
            break;

        }  


      
      break;  
    default:
        print('noting entered');

  }
  print('do you want to continio?(Y/N)');
  String? contin = stdin.readLineSync();
  if(contin == "N" || contin == "n"){
    print('By');
    bl = false;
    break;
  }

}




}

Patient pAdd(){

  
 name1 = stdin.readLineSync();
  pId1 = stdin.readLineSync();
  diagnose1 = stdin.readLineSync();
  part1 = stdin.readLineSync();
Patient patient = Patient(pId1!, diagnose1!, name1!, part1!);

return patient;

}

void search(String key){
  for(var i = 0 ; i<list.length ; i++){
    if(list[i].name == key || list[i].diagnose == key || list[i].pId == key || list[i].part == key){

      print(list[i]);


    }
    

  }



}


