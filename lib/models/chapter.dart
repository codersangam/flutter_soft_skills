// ignore_for_file: file_names

class Chapter {
  final String? title, picture, subtitle;

  Chapter({
    this.picture,
    this.title,
    this.subtitle,
  });
}

List<Chapter> chapters = [
  Chapter(
      title: 'Chapter 1',
      picture: 'assets/images/company.png',
      subtitle: 'What Happens in Company Placement Process?'),
  Chapter(
      title: 'Chapter 2',
      picture: 'assets/images/gd.png',
      subtitle: 'Group Discussion'),
  Chapter(
      title: 'Chapter 3',
      picture: 'assets/images/question.png',
      subtitle: 'HR Interview Questions for Freshers'),
  Chapter(
      title: 'Chapter 4',
      picture: 'assets/images/dress.png',
      subtitle: 'Do\'s and Dont\'s in Interview'),
  Chapter(
      title: 'Chapter 5',
      picture: 'assets/images/body.png',
      subtitle: 'Body Language and Interview Behaviour'),
];
