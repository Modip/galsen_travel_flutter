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
    image: "assets/dakar1.jpg",
  ),
  Place(
    id: 2,
    title: "Mbour",
    region: "Thies",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/senegal3.jpg",
  ),
  Place(
    id: 3,
    title: "Saloum",
    region: "Kaolack",
    description:
        "Vénus est souvent décrite comme une « sœur jumelle » de la Terre en raison de ses caractéristiques globales très proches de celles de notre planète : son diamètre vaut en effet 95 % de celui de la Terre.\n\nNéanmoins, les conditions qui règnent à sa surface diffèrent radicalement des conditions terrestres : son atmosphère, extrêmement dense est occupée par d'épais nuages de dioxyde de soufre. On y observe le plus fort effet de serre du système solaire, permettant d'atteindre des températures de surface tournant autour des 460 °C, soit bien plus que celle de Mercure pourtant plus proche du soleil.\n\nLa surface de Vénus est relativement jeune, du fait d'un volcanisme entraînant parfois la présence de lave en fusion au sol.",
    image: "assets/senegal2.jpg",
  ),
  Place(
      id: 4,
      title: "Kaolack",
      region: "Saloum",
      description: "De toutes ls mais ausslar.",
      image: "assets/saloum1.jpg"),
  Place(
      id: 5,
      title: "Lac Rose",
      region: "Dakar.",
      description:
          "Le lac Rose, ou lac Rëtba pour les Wolofs, est une lagune côtière fermée, c'est-à-dire coupée de la mer, situé au Sénégal, à proximité immédiate de Dakar.Le « Lac » s'étend sur environ 3 km2, avec une profondeur faible. Ces eaux sont salées et ont une teinte rose en raison de la présence d'une algue microscopique.\n Ce site touristique est l'un des plus visités du Sénégal. Il doit sa renommée à la teinte originale et changeante de son eau, mais aussi au rallye Paris-Dakar dont il constituait l’ultime étape.\nL'extraction du sel est pratiquée dans le lac lui-même, de façon manuelle.",
      image: "assets/lac_rose.png"),
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
    star: "30",
    title: "Corniche",
    region: "Dakar",
    image: "assets/saloum2.jpg",
  ),
  Recommende(
    id: 2,
    star: "55",
    title: "Saloum",
    region: "Kaolack",
    image: "assets/senegal2.jpg",
  ),
  Recommende(
    id: 3,
    star: "7",
    title: "Mbour",
    region: "Thies",
    image: "assets/senegal3.jpg",
  ),
  Recommende(
      id: 4,
      star: "4",
      title: "Dakar",
      region: "Lac Rose.",
      image: "assets/saloum1.jpg"),
  Recommende(
      id: 5,
      star: "5",
      title: "Saloum",
      region: "Kaolack.",
      image: "assets/lac_rose.png"),
];

List categories = [
  "Places",
  "Hotels",
  "Monument",
  "Plages",
  "Evenement",
];
