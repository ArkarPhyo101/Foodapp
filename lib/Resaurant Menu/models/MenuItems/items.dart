class MenuItem {
  String menuPhotos;
  String text;
  dynamic price;
  bool icon;
  MenuItem(
      {
      required this.icon,
      required this.menuPhotos,
      required this.text,
      required this.price});
}

List<MenuItem> menuitems = [
  MenuItem(
      
      menuPhotos: 'assets/plate.jpg',
      text: 'Steaf food',
      price: [1, 500],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate1.jpg',
      text: 'potato',
      price: [1,800],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate.jpg',
      text: 'Steaf food',
      price: [1,500],
      icon: true,),
  MenuItem(
      menuPhotos: 'assets/plate1.jpg',
      text: 'potato',
      price: [1,800],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate.jpg',
      text: 'Steaf food',
      price: [1,500],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate1.jpg',
      text: 'potato',
      price: [1,800],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate.jpg',
      text: 'Steaf food',
      price: [1,500],
      icon: true, ),
  MenuItem(
      menuPhotos: 'assets/plate1.jpg',
      text: 'potato',
      price: [1,800],
      icon: true, ),
];
