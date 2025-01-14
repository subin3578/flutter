class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post(this.userId, this.id, this.title, this.body);

  @override
  String toString() {
    return 'Post{userId: $userId, id: $id, title: $title, body: $body}';
  }
}
