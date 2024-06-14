

class Doctor {
  final String name;
  final String specialty;
  final String imagePath;
  final String about;
  final double rating;
  final List<Review> reviews;

  Doctor({
    required this.name,
    required this.specialty,
    required this.imagePath,
    required this.about,
    required this.rating,
    required this.reviews,
  });
}

class Review {
  final String reviewerName;
  final String reviewerImage;
  final String reviewDate;
  final String reviewText;

  Review({
    required this.reviewerName,
    required this.reviewerImage,
    required this.reviewDate,
    required this.reviewText,
  });
}
