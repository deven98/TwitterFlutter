import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_ui_demo/TweetHelper.dart';
import 'package:twitter_ui_demo/TweetItemModel.dart';

class UserFeedPage extends StatefulWidget {
  @override
  _UserFeedPageState createState() => _UserFeedPageState();
}

class _UserFeedPageState extends State<UserFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home", style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.account_circle, color: Colors.grey, size: 35.0,),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, position) {

          TweetItemModel tweet = TweetHelper.getTweet(position);

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle, size: 60.0, color: Colors.grey,),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Container(child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text:tweet.username, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.black),),
                                        TextSpan(text:" " + tweet.twitterHandle,style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                                        TextSpan(text:" ${tweet.time}",style: TextStyle(fontSize: 16.0, color: Colors.grey))
                                      ]
                                    ),overflow: TextOverflow.ellipsis,
                                  )),flex: 5,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 4.0),
                                    child: Icon(Icons.expand_more, color: Colors.grey,),
                                  ),flex: 1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(tweet.tweet, style: TextStyle(fontSize: 18.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.comment, color: Colors.grey,),
                                Icon(FontAwesomeIcons.retweet, color: Colors.grey,),
                                Icon(FontAwesomeIcons.heart, color: Colors.grey,),
                                Icon(FontAwesomeIcons.shareAlt, color: Colors.grey,),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(FontAwesomeIcons.featherAlt),
      ),
    );
  }
}