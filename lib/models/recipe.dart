class Recipe {
  final String id;
  final String title;
  final String description;
  final String imagePublicId;
  final String imageSemanticLabel;

  const Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePublicId,
    required this.imageSemanticLabel,
  });
}
