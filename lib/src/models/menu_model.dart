class MenuModel {
  const MenuModel({required this.icon});

  final String icon;

  static const List<MenuModel> menuList = [
    MenuModel(icon: "assets/icons/home.svg"),
    MenuModel(icon: "assets/icons/heart.svg"),
    MenuModel(icon: "assets/icons/bell.svg"),
    MenuModel(icon: "assets/icons/user.svg"),
  ];
}
