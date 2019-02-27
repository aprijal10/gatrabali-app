import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:gatrabali/models/Feed.dart';

class News extends Model {
  List<Feed> feeds = [];

  void setFeeds(List<Feed> feeds) {
    this.feeds = feeds;
    notifyListeners();
  }

  static News of(BuildContext ctx) => ScopedModel.of<News>(ctx, rebuildOnChange: true);
}
