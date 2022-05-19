class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth',
          hightLight: true),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Sai Ua Sanum Phrai',
        '50 min',
        4.8,
        '325 kcal',
        18,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth',
      ),
      Food(
        'assets/images/dish3.png',
        'Highly recommended',
        'Ratatouille pasta',
        '50 min',
        4.8,
        '325 kcal',
        17,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth',
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish3.png',
          'Highly recommended',
          'Ratatouille pasta',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth',
          hightLight: true),
      Food(
        'assets/images/dish4.png',
        'Most Popular',
        'Tomato Checken',
        '50 min',
        4.8,
        '325 kcal',
        14.5,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth',
      ),
    ];
  }
}
