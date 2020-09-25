class Signo {
  List<String> _mensagem = [
    "Quente – Os seus signos estão muito bem alinhados. As suas formas de amar são parecidas o suficiente para se perceberem, e diferentes o suficiente para ser excitante.",
    "Paixão Perfeita – Os vossos signos estão perfeitamente alinhados. As vossas formas de amar são tão parecidas que é estranho. A vossa relação é muito intensa.",
    "Os vossos signos estão alinhados em 60 graus. Vocês apreciam a forma de amar um do outro. É fácil colaborar entre vocês.",
    "Os Opostos Atraem-se! Os vossos signos estão alinhados opostamente. Cada um pensa que o outro é fascinante, frustante e intrigante – tudo ao mesmo tempo!",
    "Quê?  – Os vossos signos estão alinhados em um angulo estranho. Na verdade não percebem a forma de amar um do outro. Vossa relação necessita de alguns ajustes.",
    "Paradoxo – Os vossos signos são inconjuntos. Se uma atração existe, é magnética e poderosa, mas é difícil de encontrar uma razão para ela, e muitos ajustes são necessários.",
    "Choque – Os vossos signos estão alinhados em quadrado. É muito difícil que entendam as necessidades amorosas um do outro, e choques são frequentes. No entanto, a atração pode ser muito forte."
  ];

  List<List<int>> _tabela = [
    [1, 4, 2, 6, 0, 5, 3, 5, 0, 6, 2, 4],
    [4, 1, 4, 2, 6, 0, 5, 3, 5, 0, 6, 2],
    [2, 4, 1, 4, 2, 6, 0, 5, 3, 5, 0, 6],
    [6, 2, 4, 1, 4, 2, 6, 0, 5, 3, 5, 0],
    [0, 6, 2, 4, 1, 4, 2, 6, 0, 5, 3, 5],
    [5, 0, 6, 2, 4, 1, 4, 2, 6, 0, 5, 3],
    [3, 5, 0, 6, 2, 4, 1, 4, 2, 6, 0, 5],
    [5, 3, 5, 0, 6, 2, 4, 1, 4, 2, 6, 0],
    [0, 5, 3, 5, 0, 6, 2, 4, 1, 4, 2, 6],
    [6, 0, 5, 3, 5, 0, 6, 2, 4, 1, 4, 2],
    [2, 6, 0, 5, 3, 5, 0, 6, 2, 4, 1, 4],
    [4, 2, 6, 0, 5, 3, 5, 0, 6, 2, 4, 1],
  ];

  Map<String, int> _signos = {
    "aries": 0,
    "touro": 1,
    "gemeos": 2,
    "cancer": 3,
    "leao": 4,
    "virgem": 5,
    "libra": 6,
    "escorpiao": 7,
    "sagitario": 8,
    "capricornio": 9,
    "aquario": 10,
    "peixes": 11
  };

  String interprete(String signo1, String signo2) {
    //Essa será a função chamada para 'calcular' os signos
    return _mensagem[_tabela[_signos[signo1]][_signos[signo2]]];
  }
}
