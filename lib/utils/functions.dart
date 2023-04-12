

class Functions {
  
  String capsFirst(String value){
    String s = "";
    if(value!= "") s = '${value[0].toUpperCase()}${value.substring(1)}';
    return s;
  }

  String capsAll(String value){
    String s = "";
    if(value!= "") s = value.toUpperCase();
    return s;
  }

}