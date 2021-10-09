import 'dart:async';

import 'package:moviequote/models/quote.dart';

class StreamQuote{

  StreamController<Quote?> _streamController = StreamController<Quote?>();

  StreamSink<Quote?> sink(){
    return _streamController.sink;
  }

  Stream<Quote?> stream(){
    return _streamController.stream;
  }

  close(){
    _streamController.sink.close();
  }

}