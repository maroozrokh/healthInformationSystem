import 'abstract_classe.dart';

class Patient {

  String _pId;
  String _diagnose,_name,_part;
  
 
///{} in constructor means nullable
///when using getter and setter we cant use nullable?? sign
  Patient(this._pId , this._diagnose ,this._name , this._part ) ;


@override
  String toString() {
    // TODO: implement toString
        return 'Patient{name : $_name, id : $_pId , diagnose: $_diagnose , part:$part }';

  }


 String get pId => this._pId ;
 set pId(String value) => _pId = value;


 String get diagnose => this._diagnose;
 set diagnose(String value) => _diagnose = value;

 String get part => this._part;
 set part(String value) => _part = value;

 String get name => this._name;
 set name(String value) => _name = value;


 



}