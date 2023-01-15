class ProductModel {
  const ProductModel({
    required this.id,
    required this.name,
    required this.hashtag,
    required this.images,
    required this.rating,
    required this.totalReview,
    required this.description,
    required this.reviewerImages,
    required this.price,
  });

  final int id;
  final String name;
  final String hashtag;
  final List<String> images;
  final String rating;
  final int totalReview;
  final String description;
  final List<String> reviewerImages;
  final double price;

  static const List<ProductModel> productList = [
    ProductModel(
      id: 1,
      name: "Arcu facilisis tortor",
      hashtag: "#best-seller",
      images: [
        "assets/images/product_1_1.webp",
        "assets/images/product_1_2.webp",
        "assets/images/product_1_3.webp",
      ],
      rating: "4.8",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. Aliquet sem adipiscing orci duis aliquet dolor massa. Cras est arcu vulputate enim ante. Lorem eros enim dolor id scelerisque pretium suspendisse duis. Quis purus sed donec pellentesque egestas in viverra. Pharetra nisl id nec tincidunt et turpis augue nunc. Nisl consequat diam enim lorem.",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
    ProductModel(
      id: 2,
      name: "Vivamus nec vel",
      hashtag: "#populer",
      images: [
        "assets/images/product_2_1.webp",
        "assets/images/product_2_2.webp",
        "assets/images/product_2_3.webp",
      ],
      rating: "4.8",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. Aliquet sem adipiscing orci duis aliquet dolor massa. Cras est arcu vulputate enim ante. Lorem eros enim dolor id scelerisque pretium suspendisse duis. Quis purus sed donec pellentesque egestas in viverra. Pharetra nisl id nec tincidunt et turpis augue nunc. Nisl consequat diam enim lorem.",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
    ProductModel(
      id: 3,
      name: "Quis purus sed",
      hashtag: "#best-rating",
      images: [
        "assets/images/product_3_1.webp",
        "assets/images/product_3_2.webp",
        "assets/images/product_3_3.webp",
      ],
      rating: "5.0",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. ",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
    ProductModel(
      id: 4,
      name: "Arcu facilisis tortor",
      hashtag: "#best-seller",
      images: [
        "assets/images/product_1_1.webp",
        "assets/images/product_1_2.webp",
        "assets/images/product_1_3.webp",
      ],
      rating: "4.8",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. Aliquet sem adipiscing orci duis aliquet dolor massa. Cras est arcu vulputate enim ante. Lorem eros enim dolor id scelerisque pretium suspendisse duis. Quis purus sed donec pellentesque egestas in viverra. Pharetra nisl id nec tincidunt et turpis augue nunc. Nisl consequat diam enim lorem.",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
    ProductModel(
      id: 5,
      name: "Vivamus nec vel",
      hashtag: "#populer",
      images: [
        "assets/images/product_2_1.webp",
        "assets/images/product_2_2.webp",
        "assets/images/product_2_3.webp",
      ],
      rating: "4.8",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. Aliquet sem adipiscing orci duis aliquet dolor massa. Cras est arcu vulputate enim ante. Lorem eros enim dolor id scelerisque pretium suspendisse duis. Quis purus sed donec pellentesque egestas in viverra. Pharetra nisl id nec tincidunt et turpis augue nunc. Nisl consequat diam enim lorem.",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
    ProductModel(
      id: 6,
      name: "Quis purus sed",
      hashtag: "#best-rating",
      images: [
        "assets/images/product_3_1.webp",
        "assets/images/product_3_2.webp",
        "assets/images/product_3_3.webp",
      ],
      rating: "5.0",
      totalReview: 250,
      description:
          "Varius ut mi hendrerit lorem etiam posuere vitae ut. Egestas amet proin a tristique suspendisse nibh. Commodo nec bibendum rhoncus justo. Aliquet sem adipiscing orci duis aliquet dolor massa. Cras est arcu vulputate enim ante. Lorem eros enim dolor id scelerisque pretium suspendisse duis. Quis purus sed donec pellentesque egestas in viverra. Pharetra nisl id nec tincidunt et turpis augue nunc. Nisl consequat diam enim lorem.",
      reviewerImages: [
        "assets/images/story_5.jpg",
        "assets/images/story_2.jpg",
        "assets/images/story_4.jpg",
      ],
      price: 499.99,
    ),
  ];
}
