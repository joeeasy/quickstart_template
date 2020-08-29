import 'package:adiaha_tv/app/constants/assets.dart';

class MoviesModel {
  MoviesModel({this.movieImage, this.movieTitle, this.movieDuration});

  final String movieImage;
  final String movieTitle;
  final String movieDuration;
}

List<MoviesModel> movies = [
  MoviesModel(
    movieDuration: '2h 14m',
    movieImage: AppAssset.image1,
    movieTitle: 'Hale of a Yellow Sun',
  ),
  MoviesModel(
    movieDuration: '1h 14m',
    movieImage: AppAssset.image2,
    movieTitle: 'October 1st',
  ),
  MoviesModel(
    movieDuration: '2h 35m',
    movieImage: AppAssset.image3,
    movieTitle: 'Phone Swap',
  ),
  MoviesModel(
    movieDuration: '2h 15m',
    movieImage: AppAssset.image4,
    movieTitle: 'IJE',
  ),
  MoviesModel(
    movieDuration: '2h 22m',
    movieImage: AppAssset.image5,
    movieTitle: 'King Of Boys',
  ),
  MoviesModel(
    movieDuration: '1h 35m',
    movieImage: AppAssset.image6,
    movieTitle: 'The Figurine',
  ),
  MoviesModel(
    movieDuration: '2h 35m',
    movieImage: AppAssset.image7,
    movieTitle: 'Weekend Getaway',
  ),
  MoviesModel(
    movieDuration: '1h 35m',
    movieImage: AppAssset.image8,
    movieTitle: 'Up North',
  ),
  MoviesModel(
    movieDuration: '1h 15m',
    movieImage: AppAssset.image9,
    movieTitle: 'Lions Heart',
  ),
  MoviesModel(
    movieDuration: '2h 30m',
    movieImage: AppAssset.image10,
    movieTitle: 'Flower Girl',
  ),
  MoviesModel(
    movieDuration: '1h 35m',
    movieImage: AppAssset.image11,
    movieTitle: 'Succeed',
  ),
  MoviesModel(
    movieDuration: '3h 35m',
    movieImage: AppAssset.image12,
    movieTitle: 'The Last Flight TO Abuja',
  ),
];
