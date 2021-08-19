class ProjectsModel {

  final String imageUrl;
  final String? imageText;

  ProjectsModel({
    required this.imageUrl,
    this.imageText,
  });
}

final List<ProjectsModel> projectList = [
  ProjectsModel(
      imageUrl: 'https://www.arageek.com/wp-content/uploads/2021/04/Depositphotos_89120612_s-2019.jpg'),
  ProjectsModel(
      imageUrl: 'https://constructionreviewonline.com/wp-content/uploads/2018/02/construction-project-management1.jpg'),
  ProjectsModel(
      imageUrl: 'https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Constructions-worker-on-site-AR15012020.jpg'),
  ProjectsModel(
      imageUrl:'https://cdn.wamda.com/thumbnails/02c92d978915190.jpg'),
  ProjectsModel(
      imageUrl: 'https://constructionreviewonline.com/wp-content/uploads/2017/04/thumbs-up-at-a-construction-site1.jpg'),
];

