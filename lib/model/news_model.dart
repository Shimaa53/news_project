class user_model {
  List<Articles>? articles;

  user_model({this.articles});

  user_model.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      articles = <Articles>[];
      json['data'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.articles != null) {
      data['data'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles{
  String? author ;
  String? title ;
  String? url ;
  String? publishedAt ;
Articles({
  this.author,
  this.title,
  this.url,
  this.publishedAt,
});
  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      author: json['author'],
      title :json['title'],
      url : json['url'],
      publishedAt : json['publishedAt'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> articles = new Map<String, dynamic>();
    articles['email'] = this.author;
    articles['first_name'] = this.title;
    articles['last_name'] = this.url;
    articles['avatar'] = this.publishedAt;
    return articles;
  }

}