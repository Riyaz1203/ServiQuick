class WhList {
  String whhtnew;

  WhList({required this.whhtnew});

  static List<WhList> getWh() {
    // ignore: non_constant_identifier_names
    List<WhList> Wh = [];

    Wh.add(WhList(whhtnew: 'assets/images/whatsnew1.png'));
    Wh.add(WhList(whhtnew: 'assets/images/whatsnew2.png'));
    Wh.add(WhList(whhtnew: 'assets/images/whatsnew1.png'));
    Wh.add(WhList(whhtnew: 'assets/images/whatsnew2.png'));

    return Wh;
  }
}
