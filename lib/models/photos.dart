class Photos {
  String? id;
  String? url;

  Photos({required this.id, required this.url});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }
}
