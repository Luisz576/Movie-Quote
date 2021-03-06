import 'package:flutter/material.dart';
import 'package:moviequote/models/quote.dart';
import 'package:moviequote/services/api.dart';
import 'package:moviequote/services/stream_quote.dart';
import 'package:moviequote/widgets/button_refresh.dart';
import 'package:moviequote/widgets/quote_item.dart';

class HomeScreen extends StatefulWidget {

  final StreamQuote sq = StreamQuote();

  @override
  _HomeScreenState createState() => _HomeScreenState(sq);

  @protected
  @mustCallSuper
  void dispose(){
    sq.close();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  final StreamQuote sq;

  _HomeScreenState(this.sq);

  void refresh() async{
    print("refresh");
    sq.sink().add(await Api.getQuote());
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Quote?>(
      initialData: null,
      builder: (context, snapshot){
        if(snapshot.data != null){
          if(!snapshot.data!.error)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                QuoteItem(snapshot.data!),
                SizedBox(height: 20),
                ButtonRefresh(onPress: (){
                  sq.sink().add(null);
                }),
              ],
            );
          else sq.sink().add(null);
        }else refresh();
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      stream: sq.stream(),
    );
  }

}