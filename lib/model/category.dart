class Categories {
  final int id;
  final String name;
  final String image;

  Categories({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<Categories> categories = [
  Categories(id: 0, name: 'All', image: 'assets/icons/all.png'),
  Categories(id: 1, name: 'Chicken', image: 'assets/icons/chicken.png'),
  Categories(id: 2, name: 'Burger & Pizza', image: 'assets/icons/burger.png'),
  Categories(id: 3, name: 'Vegetables', image: 'assets/icons/vegetable.png'),
  Categories(id: 4, name: 'Drink', image: 'assets/icons/drink.png'),
];