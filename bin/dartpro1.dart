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
  
  int num = 0;

  
  switch (options) {
    case '1':
   

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
          print('please enter your search item based on :1-name 2-id ');
          String? serahcItem = stdin.readLineSync();
          
          
          deleteItem(serahcItem!, list);
          
            break;
          case '2':

          
          
            break;
          case '3':
          
          
            break;

        }   
          
      
      break;

    case '4':
          print('please enter your option:1-name 2-id ');
          String? inneroption4 = stdin.readLineSync();
        print('please enter your update data ');
        String? inneroption5 = stdin.readLineSync()!;
         print('please enter your update data ');
        String? changeKey = stdin.readLineSync()!;
        upDate(inneroption4! , inneroption5,changeKey,list);

      
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
    print('Bye');
    bl = false;
    break;
  }

}




}

Patient pAdd(){

  print('name:');
  name1 = stdin.readLineSync();
  print('ID:');
  pId1 = stdin.readLineSync();
  print('Diagnosis:');
  diagnose1 = stdin.readLineSync();
  print('Department:');
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

void upDate(String inneroption4 , String key ,String changeKey ,List myList){
    myList = search(key);
  
  for(var i = 0 ; i<myList.length ; i++){
    
 switch(inneroption4){
    case '1':
      myList[i].name = changeKey;
      break;
    case '2' :
       myList[i].pId = changeKey;
    
      break;
   
  }
  break;
     
  }
}

void deleteItem(String serahcItem,List myList){
  myList = search(serahcItem);
  for(var i = 0 ; i< myList.length;i++){
    myList.remove(myList[i]);
    break;
  }
}