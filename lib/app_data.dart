import 'package:travel_app/Models/category_model.dart';
import './Models/trip_model.dart';

const Category_data = const [
  CategoryModel(
    id: 'c1',
    title: 'Mountains',
    imageURL:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),
  CategoryModel(
    id: 'c2',
    title: 'Lakes',
    imageURL:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  CategoryModel(
    id: 'c3',
    title: 'Beaches',
    imageURL:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  CategoryModel(
    id: 'c4',
    title: 'Deserts',
    imageURL:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  CategoryModel(
    id: 'c5',
    title: 'Historic Cities',
    imageURL:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  CategoryModel(
    id: 'c6',
    title: 'Others',
    imageURL:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = const [
  TripModel(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'The Alps',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageURL:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bnRhaW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    durationDay: 20,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  TripModel(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Southern Mountains',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageURL:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    durationDay: 10,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  TripModel(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'High Mountains',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageURL:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    durationDay: 45,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  TripModel(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'The Great Lake',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageURL:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    durationDay: 60,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  TripModel(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Small Lakes',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageURL:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    durationDay: 15,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  TripModel(
    id: 'm6',
    categories: [
      'c3',
    ],
    title: 'Tropical Beach',
    tripType: TripType.Activities,
    season: Season.Summer,
    imageURL:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGJlYWNoZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    durationDay: 10,
    activities: [
      'Visiting historical sites',
      'Walking tours',
      'Shopping at malls',
      'Having lunch',
      'Enjoying beautiful landscapes',
    ],
    program: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
];
