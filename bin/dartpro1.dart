import 'package:dartpro1/dartpro1.dart' as dartpro1;
import 'dart:io';
import 'classes/patients.dart';
import 'dart:math';
String ?name1,pId1,dId1,sId1,diagnose1,part1;
List<Patient> list = [];
String? inneroption3;


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

  readLine();
        switch(inneroption3){
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
        

      
     readLine();
        switch(inneroption3){
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
  readLine();
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
        String? searchItem11 = stdin.readLineSync();
        List myList = search(searchItem11!);
        // readLine();
        print('please enter your update data ');
        String? inneroption5 = stdin.readLineSync()!;
        upDate(inneroption5,list);

      
      break;

    case '5':
       readLine();
         
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

List search(String key){
  for(var i = 0 ; i<list.length ; i++){
    if(list[i].name == key || list[i].diagnose == key || list[i].pId == key || list[i].part == key){

     print(list[i]);
    }
  }
  return list;
   
}

void readLine(){
  print('please enter your option:1-patient 2-physicion 3-personel');
   inneroption3 = stdin.readLineSync();


}

void upDate(String key,List myList){

  print('please enter your option:1-name 2-id ');
   String? inneroption4 = stdin.readLineSync()!;

  
  for(var i = 0 ; i<list.length ; i++){
    
 switch(inneroption4){
    case 'name':
      myList[i].name = key;
      break;
    case 'id' :
       myList[i].pId = key;
    
      break;
   
  }
  break;
     
  }
}
