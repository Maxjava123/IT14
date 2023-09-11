class Post {
  final String profImg;
  final String profName;
  final String profTime;
  final String profDesc;
  final String postImg;
  final String postCommnets;
  final String postShares;
  bool isLiked = false;

  Post({
    required this.profImg,
    required this.profName,
    required this.profTime,
    required this.profDesc,
    required this.postImg,
    required this.postCommnets,
    required this.postShares,
  });
}
