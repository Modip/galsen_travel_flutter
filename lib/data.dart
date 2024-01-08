class Place {
  final String image, title, region, description;
  final int id;
  Place(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Place> places = [
  Place(
    id: 1,
    title: "Corniche",
    region: "Dakar",
    description:
        "Surface est couverte d'un tapis poussiéreux de minéraux (silicates), de cassures et de cratères d'impact. La planète ressemble beaucoup en apparence à la Lune, ne présentant a priori aucun signe d'activité interne.\n\nLa proximité du Soleil engendre des températures en surface allant jusqu'à 427°C mais pouvant tomber à -183 °C au fond des cratères polaires (là où les rayons du Soleil ne parviennent jamais).",
    image: "assets/images/places/corniche1.jpg",
  ),
  Place(
    id: 2,
    title: "Mbour",
    region: "Thies",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/images/places/joal1.jpg",
  ),
  Place(
    id: 3,
    title: "Dindefelo",
    region: "Kedougou",
    description:
        "Chutes de 100 m environ, elles sont situées dans la ville de Dindefelo, sont une attraction touristique et un parc du sud-est du Sénégal. Il est situé à quelques kilomètres de la frontière guinéenne.",
    image: "assets/images/places/kedougou1.jpg",
  ),
  Place(
      id: 4,
      title: "Kaolack",
      region: "Saloum",
      description: "De toutes ls mais ausslar.",
      image: "assets/images/places/saloum1.jpg"),
  Place(
      id: 5,
      title: "Lac Rose",
      region: "Dakar",
      description:
          "Le lac Rose, ou lac Rëtba pour les Wolofs, est une lagune côtière fermée, c'est-à-dire coupée de la mer, situé au Sénégal, à proximité immédiate de Dakar.Le « Lac » s'étend sur environ 3 km2, avec une profondeur faible. Ces eaux sont salées et ont une teinte rose en raison de la présence d'une algue microscopique.\n Ce site touristique est l'un des plus visités du Sénégal. Il doit sa renommée à la teinte originale et changeante de son eau, mais aussi au rallye Paris-Dakar dont il constituait l’ultime étape.\nL'extraction du sel est pratiquée dans le lac lui-même, de façon manuelle.",
      image: "assets/images/places/lac_rose.png"),
  Place(
      id: 6,
      title: "Lompoul",
      region: "Louga",
      description: "L'un des plus petit desert au monde.",
      image: "assets/images/places/lompoul1.jpg"),
  Place(
      id: 7,
      title: "Faidherbe",
      region: "Saint Louis",
      description: "Pont mythique datant des années 1800",
      image: "assets/images/places/saint_louiss2.jpg"),
];

class Hotel {
  final String image, title, region, description;
  final int id;
  Hotel(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Hotel> hotels = [
  Hotel(
    id: 1,
    title: "Teranga",
    region: "Dakar",
    description:
        "Superfice 1 hectare hotel luxieuse de cinq étoiles situé sur la corniche ouest. Elle offre pied dans l'eau en meme temps une bonne dose de soleil.",
    image: "assets/images/hotels/hotel1.jpg",
  ),
  Hotel(
    id: 2,
    title: "Le Rail",
    region: "Thies",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/images/hotels/hotel2.jpg",
  ),
  Hotel(
    id: 3,
    title: "Saloum",
    region: "Kaolack",
    description:
        "Vénus est souvent décrite comme une « sœur jumelle » de la Terre en raison de ses caractéristiques globales très proches de celles de notre planète : son diamètre vaut en effet 95 % de celui de la Terre.\n\nNéanmoins, les conditions qui règnent à sa surface diffèrent radicalement des conditions terrestres : son atmosphère, extrêmement dense est occupée par d'épais nuages de dioxyde de soufre. On y observe le plus fort effet de serre du système solaire, permettant d'atteindre des températures de surface tournant autour des 460 °C, soit bien plus que celle de Mercure pourtant plus proche du soleil.\n\nLa surface de Vénus est relativement jeune, du fait d'un volcanisme entraînant parfois la présence de lave en fusion au sol.",
    image: "assets/images/hotels/hotel3.jpg",
  ),
  Hotel(
      id: 4,
      title: "Nio far",
      region: "Dakar",
      description: "De toutes ls mais ausslar.",
      image: "assets/images/hotels/hotel4.jpg"),
];

class Parc {
  final String image, title, region, description;
  final int id;
  Parc(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Parc> parcs = [
  Parc(
    id: 1,
    title: "Banja",
    region: "Thies",
    description:
        "A 65 KM de Dakar, le reserve de banja est à la fois proche de la capital et des plages de Saly. On y trouve une divertité d'animaux typique de la faune",
    image: "assets/images/parcs/banja1.jpg",
  ),
  Parc(
    id: 2,
    title: "Parc Hann",
    region: "Dakar",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/images/parcs/banja2.jpg",
  ),
  Parc(
    id: 3,
    title: "Niokolokoba",
    region: "Tamba",
    description:
        "Situées dans une zone bien irriguée, le long des rives de la Gambie, les forêts-galeries et les savanes du Niokolo-Koba abritent une faune d'une grande richesse : l'élan de Derby (la plus grande des antilopes), des chimpanzés, des lions, des léopards, une importante population d'éléphants et de très nombreux oiseaux, reptiles et amphibiens.",
    image: "assets/images/parcs/niokoloko1.jpeg",
  ),
  Parc(
    id: 4,
    title: "Djouth",
    region: "Saint Louis",
    description: "De toutes ls mais ausslar.",
    image: "assets/images/parcs/djouth1.jpg",
  ),
  Parc(
    id: 5,
    title: "Niokolokoba",
    region: "Tamba",
    description:
        "Situées dans une zone bien irriguée, le long des rives de la Gambie, les forêts-galeries et les savanes du Niokolo-Koba abritent une faune d'une grande richesse : l'élan de Derby (la plus grande des antilopes), des chimpanzés, des lions, des léopards, une importante population d'éléphants et de très nombreux oiseaux, reptiles et amphibiens.",
    image: "assets/images/parcs/niokoloko2.jpg",
  ),
  Parc(
    id: 6,
    title: "Djouth",
    region: "Saint Louis",
    description: "De toutes ls mais ausslar.",
    image: "assets/images/parcs/djouth2.jpg",
  ),
];

class Plage {
  final String image, title, region, description;
  final int id;
  Plage(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Plage> plages = [
  Plage(
    id: 1,
    title: "Corniche",
    region: "Dakar",
    description:
        "Surface est couverte d'un tapis poussiéreux de minéraux (silicates), de cassures et de cratères d'impact. La planète ressemble beaucoup en apparence à la Lune, ne présentant a priori aucun signe d'activité interne.\n\nLa proximité du Soleil engendre des températures en surface allant jusqu'à 427°C mais pouvant tomber à -183 °C au fond des cratères polaires (là où les rayons du Soleil ne parviennent jamais).",
    image: "assets/images/plages/casamance1.jpg",
  ),
  Plage(
    id: 2,
    title: "Mbour",
    region: "Thies",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/images/plages/casamance2.jpg",
  ),
  Plage(
    id: 3,
    title: "Sine Saloum",
    region: "Kaolack",
    description:
        "Vénus est souvent décrite comme une « sœur jumelle » de la Terre en raison de ses caractéristiques globales très proches de celles de notre planète : son diamètre vaut en effet 95 % de celui de la Terre.\n\nNéanmoins, les conditions qui règnent à sa surface diffèrent radicalement des conditions terrestres : son atmosphère, extrêmement dense est occupée par d'épais nuages de dioxyde de soufre. On y observe le plus fort effet de serre du système solaire, permettant d'atteindre des températures de surface tournant autour des 460 °C, soit bien plus que celle de Mercure pourtant plus proche du soleil.\n\nLa surface de Vénus est relativement jeune, du fait d'un volcanisme entraînant parfois la présence de lave en fusion au sol.",
    image: "assets/images/plages/casamance3.jpg",
  ),
  Plage(
      id: 4,
      title: "Kaolack",
      region: "Saloum",
      description: "De toutes ls mais ausslar.",
      image: "assets/images/plages/casamance4.jpg"),
];

class Monument {
  final String image, title, region, description;
  final int id;
  Monument(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Monument> monuments = [
  Monument(
    id: 1,
    title: "Renaissance",
    region: "Dakar",
    description:
        "Surface est couverte d'un tapis poussiéreux de minéraux (silicates), de cassures et de cratères d'impact. La planète ressemble beaucoup en apparence à la Lune, ne présentant a priori aucun signe d'activité interne.\n\nLa proximité du Soleil engendre des températures en surface allant jusqu'à 427°C mais pouvant tomber à -183 °C au fond des cratères polaires (là où les rayons du Soleil ne parviennent jamais).",
    image: "assets/images/monuments/monument_renaissance.png",
  ),
];

class Recommende {
  final String image, title, region, star;
  final int id;
  Recommende({
    required this.id,
    required this.star,
    required this.title,
    required this.region,
    required this.image,
  });
}

List<Recommende> recommendes = [
  Recommende(
    id: 1,
    star: "55",
    title: "Corniche",
    region: "Dakar",
    image: "assets/images/places/corniche1.jpg",
  ),
  Recommende(
    id: 2,
    star: "30",
    title: "Saloum",
    region: "Kaolack",
    image: "assets/images/places/saloum2.jpg",
  ),
  Recommende(
    id: 3,
    star: "17",
    title: "Mbour",
    region: "Thies",
    image: "assets/images/places/joal2.jpg",
  ),
  Recommende(
      id: 4,
      star: "14",
      title: "Dakar",
      region: "Lac Rose.",
      image: "assets/images/places/saloum1.jpg"),
  Recommende(
      id: 5,
      star: "8",
      title: "Saloum",
      region: "Kaolack.",
      image: "assets/images/places/lac_rose.png"),
  Recommende(
      id: 6,
      star: "5",
      title: "Lompoul",
      region: "Louga.",
      image: "assets/images/places/lompoul1.jpg"),
];

List categories = [
  "Places",
  "Hotels",
  "Monument",
  "Plages",
  "Evenement",
];

List djouths = [
  "assets/images/parcs/djouth1.jpg",
  "assets/images/parcs/djouth2.jpg"
];

class Explore {
  final String image, title, region, description;
  final int id;
  Explore(
      {required this.id,
      required this.title,
      required this.region,
      required this.image,
      required this.description});
}

List<Explore> explores = [
  Explore(
    id: 1,
    title: "Pont Faidherbe",
    region: "St Louis",
    description: "Pont mythique dantant de 1897",
    image: "assets/images/places/saint_louis.jpg",
  ),
  Explore(
    id: 2,
    title: "Dindefelo",
    region: "Kedougou",
    description: "Chutes de 100 m environ",
    image: "assets/images/places/kedougou1.jpg",
  ),
  Explore(
      id: 2,
      title: "Kaolack",
      region: "Saloum",
      description: "Des iles pardisiaques",
      image: "assets/images/places/saloum1.jpg"),
  Explore(
      id: 3,
      title: "Lac Rose",
      region: "Dakar",
      description: "Un lac au coeur de la ville.",
      image: "assets/images/places/lac_rose.png"),
  Explore(
      id: 4,
      title: "Lompoul",
      region: "Louga",
      description: "L'un des plus petit desert au monde.",
      image: "assets/images/places/lompoul1.jpg"),
  Explore(
    id: 5,
    title: "Corniche",
    region: "Dakar",
    description: "Une espace magnifique le long de mer",
    image: "assets/images/places/corniche1.jpg",
  ),
  Explore(
    id: 6,
    title: "Mbour",
    region: "Thies",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/images/places/joal1.jpg",
  ),
];
