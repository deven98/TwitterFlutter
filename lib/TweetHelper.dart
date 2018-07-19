
import 'package:twitter_ui_demo/TweetItemModel.dart';

class TweetHelper {

  static var tweets = [
    TweetItemModel("Inviting computer science students to register for the latest event in computer technology.", "Google Devs", "3m", "@GoogleDevsIndia"),
    TweetItemModel("Developing a large, complex app that needs a microservice architecture? @crichardson. Read on to learn how to  decompose an application into services ", "Java", "5m", "@java"),
    TweetItemModel("The Samsung Galaxy S9 is in the record books now, but it's not likely that Samsung will be celebrating this particular milestone. https://www.androidauthority.com/samsung-galaxy-s9-history-887809/ … #samsung #samsunggalaxys9 by: C. Scott Brown", "Android Authority", "30m", "@AndroidAuth"),
    TweetItemModel("Inviting computer science students to register for the latest event in computer technology.", "Google Devs India", "3m", "@GoogleDevsIndia"),
  ];

  static TweetItemModel getTweet(int position) {
    return tweets[position];
  }

}
