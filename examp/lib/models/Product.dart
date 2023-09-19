
class Product {
  final String image, title;
  final int id;
  final double rate;

  Product(
      {required this.image,
      required this.title,
      required this.rate,
  required this.id});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ha Noi",
      rate: 4.6,
      image: "assets/images/hanoi.jpg"
  ),
  Product(
      id: 2,
      title: "Sai Gon",
      rate: 4.0,
      image: "assets/images/saigon.jpg"
  ),
  Product(
      id: 3,
      title: "Da Nang",
      rate: 4.8,
      image: "assets/images/danang.jpg"
  ),
  Product(
      id: 4,
      title: "Sa Pa",
      rate: 4.2,
      image: "assets/images/sapa.jpg"
  )
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
