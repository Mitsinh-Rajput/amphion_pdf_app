class CategoryModel {
  String title;
  String image;
  List<SubCategoryModel> subCategories;
  CategoryModel({
    required this.title,
    required this.image,
    this.subCategories = const [],
  });
}

class SubCategoryModel {
  String title;
  String icon;
  int? index;
  List<SubCategoryImage> images;

  SubCategoryModel({required this.title, required this.icon, this.images = const [], this.index});

  @override
  String toString() {
    return '\n$title  $images \n';
  }
}

class SubCategoryImage {
  int? index;
  int? subCategoryIndex;
  String image;
  String? title;
  String? reference;
  String? extra1;
  String? extra2;
  SubCategoryImage({required this.image, this.title, this.reference, this.extra1, this.extra2, this.index, this.subCategoryIndex});
  @override
  String toString() {
    return '$image $extra1 $extra2';
  }
}
