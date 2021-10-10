class Quote{

  late bool error;
  late String quote, author;

  Quote.fromMap(Map<String, dynamic> map){
    error = false;
    quote = map["quote"];
    author = map["role"];
  }

  Quote.error(){
    error = true;
    quote = "";
    author = "";
  }

}