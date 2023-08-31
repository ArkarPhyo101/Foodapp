class SpecialOffer {
  String photo;
  String name;
  String price;
  String offPerentage;

  SpecialOffer(
      {required this.photo,
      required this.name,
      required this.price,
      required this.offPerentage});
}

List<SpecialOffer> todaySpecial = <SpecialOffer>[
  SpecialOffer(
      photo: 'assets/burger.jpg',
      name: 'Yummies \nSpecial Burger',
      price: 'N 1,800',
      offPerentage: '[10 % off]'),
  SpecialOffer(
      photo: 'assets/burger.jpg',
      name: 'Yummies \nSpecial Burger',
      price: 'N 1,700',
      offPerentage: '[10 % off]'),
  SpecialOffer(
      photo: 'assets/burger.jpg',
      name: 'Yummies \nSpecial Burger',
      price: 'N 1,900',
      offPerentage: '[10 % off]'),
  SpecialOffer(
      photo: 'assets/burger.jpg',
      name: 'Yummies \nSpecial Burger',
      price: 'N 1,500',
      offPerentage: '[10 % off]'),
];
