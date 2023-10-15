class RecommendedList {
  String name;
  String servicecategory;
  String location;
  String star;
  String review;
  String image;

  RecommendedList(
      {required this.name,
      required this.location,
      required this.review,
      required this.servicecategory,
      required this.star,
      required this.image});

  static List<RecommendedList> getRecommended() {
    // ignore: non_constant_identifier_names
    List<RecommendedList> Recommended = [];

    Recommended.add(RecommendedList(
        image: 'assets/images/whatsnew1.png',
        name: 'Chennai Hardware',
        location: 'Vellore,Tamilnadu',
        servicecategory: 'Shop',
        review: '500',
        star: '5'));

    return Recommended;
  }
}
