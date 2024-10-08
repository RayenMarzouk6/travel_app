enum Season { Spring, Summer, Autumn, Winter }

enum TripType { Exploration, Recovery, Activities, Therapy }

class TripModel {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> activities;
  final List<String> program;
  final int durationDay;
  final Season season;
  final String imageURL;
  final TripType tripType;

  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  const TripModel(
      {required this.id,
      required this.categories,
      required this.title,
      required this.activities,
      required this.program,
      required this.durationDay,
      required this.season,
      required this.imageURL,
      required this.tripType,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamilies});

  get removeItem => null;
}
