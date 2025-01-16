class Experience {
  final String companyName;
  final String position;
  final DateTime startDate;
  final DateTime? endDate;

  Experience({
    required this.companyName,
    required this.position,
    required this.startDate,
    this.endDate,
  });
}

List<Experience> experience = [
  Experience(
    companyName: '現職',
    position: 'iOS & Flutter RD',
    startDate: DateTime(2023, 11),
    endDate: null,
  ),
  Experience(
    companyName: 'SEEKTOP',
    position: 'iOS App RD',
    startDate: DateTime(2023, 2),
    endDate: DateTime(2023, 6),
  ),
  Experience(
    companyName: '凡谷興業有限公司',
    position: 'iOS App RD',
    startDate: DateTime(2020, 5),
    endDate: DateTime(2023, 1),
  ),
  Experience(
    companyName: '信業國際有限公司',
    position: 'iOS App RD',
    startDate: DateTime(2020, 1),
    endDate: DateTime(2020, 5),
  ),
];
