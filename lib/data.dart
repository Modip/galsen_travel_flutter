
class Place {
  final String image, title, subtitle, description;
  final int id;
  Place(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.description});
}

List<Place> places = [
  Place(
    id: 1,
    title: "Mercure",
    subtitle: "Je suis la planéte la plus proche du soleil et la moins massive",
    description:
        "L'atmosphère de Mercure est quasi inexistante à cause de la température très élevée de la surface et de la faible gravité de la planète.\n\nLa surface est couverte d'un tapis poussiéreux de minéraux (silicates), de cassures et de cratères d'impact. La planète ressemble beaucoup en apparence à la Lune, ne présentant a priori aucun signe d'activité interne.\n\nLa proximité du Soleil engendre des températures en surface allant jusqu'à 427°C mais pouvant tomber à -183 °C au fond des cratères polaires (là où les rayons du Soleil ne parviennent jamais).",
    image: "assets/dakar1.jpg",
  ),
  Place(
    id: 2,
    title: "Venus",
    subtitle: "Je suis la planéte « sœur jumelle »  de la terre",
    description:
        "Vénus est souvent décrite comme une « sœur jumelle » de la Terre en raison de ses caractéristiques globales très proches de celles de notre planète : son diamètre vaut en effet 95 % de celui de la Terre.\n\nNéanmoins, les conditions qui règnent à sa surface diffèrent radicalement des conditions terrestres : son atmosphère, extrêmement dense est occupée par d'épais nuages de dioxyde de soufre. On y observe le plus fort effet de serre du système solaire, permettant d'atteindre des températures de surface tournant autour des 460 °C, soit bien plus que celle de Mercure pourtant plus proche du soleil.\n\nLa surface de Vénus est relativement jeune, du fait d'un volcanisme entraînant parfois la présence de lave en fusion au sol.",
    image: "assets/images1.jpg",
  ),
  Place(
    id: 3,
    title: "Terre",
    subtitle: "Je suis la planéte bleu et la seule habité",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.\n \nLa Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. \nDe la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.",
    image: "assets/senegal3.jpg",
  ),
  Place(
      id: 4,
      title: "Mars",
      subtitle: "Je suis la planéte rouge, de taille intermédiaire ...",
      description:
          "De toutes les planètes, Mars est celle qui suscite le plus d'intérêt de la part des scientifiques mais aussi du grand public.\n\n D'une taille intermédiaire entre celle de la Terre et de la Lune, Mars présente des analogies avec ces 2 corps, à travers ses cratères et ses bassins d\'impact (comme sur la Lune), d\'une part, et avec ses volcans (Olympus Mons est le plus grand volcan du système solaire !), ses rifts, ses vallées et ses calottes polaires (comme sur la Terre) d'autre part.\nC'est aussi la seule autre planète (autre que la Terre !) où la vie aurait pu (ou a pu) se développer dans le passé, lorsque la pression atmosphérique, alors plus élevée, permettait à l'eau liquide de s'y écouler.",
      image: "assets/images/mars.png"),

];