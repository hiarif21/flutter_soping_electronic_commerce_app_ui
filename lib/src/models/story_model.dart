class StoryModel {
  const StoryModel({required this.image});

  final String image;

  static const List<StoryModel> storyList = [
    StoryModel(image: "assets/images/story_1.jpg"),
    StoryModel(image: "assets/images/story_2.jpg"),
    StoryModel(image: "assets/images/story_3.jpg"),
    StoryModel(image: "assets/images/story_4.jpg"),
    StoryModel(image: "assets/images/story_5.jpg"),
    StoryModel(image: "assets/images/story_6.jpg"),
    StoryModel(image: "assets/images/story_7.jpg"),
    StoryModel(image: "assets/images/story_8.jpg"),
  ];
}
