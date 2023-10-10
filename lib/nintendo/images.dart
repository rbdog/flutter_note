enum Images {
  event('assets/images/event.png'),
  map('assets/images/map.png'),
  animalCrossing('assets/images/animal-crossing.png'),
  games('assets/images/games.png'),
  goldCoin('assets/images/gold-coin.png'),
  silverCoin('assets/images/silver-coin.png'),
  unknown('');

  const Images(this.path);
  final String path;
}
