INSERT INTO `recipe`(`name`, `time`, `favorite`, `skill`) VALUES('Poulet au four', '1h55', false, 'facile');

INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "poulet fermier d'environ 1.8 kg", 0.15);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "oignon frais", 0.25);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "poignée de tomate cerise", 0.15);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "gousse d'ail selon le goût", 0.4);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "cl de jus de citron", 0.15);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "bouillon de volaille dilué dans un verre d'eau", 0.15);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "feuille de laurier", 1);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (1, "petite poignée de sel gros", 0.15);

INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Préchauffer le four à 200°C (thermostat 6).", 1);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Placer à l'intérieur du poulet deux gousses d'ail et les feuilles de laurier.", 2);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Préparer la sauce en mélangeant le jus de citron et le verre de bouillon de volaille. Arroser copieusement le poulet et verser le reste du jus dans le plat.", 3);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Saupoudrer le gros sel sur le poulet.", 4);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Placer le poulet dans le plat, avec les oignons coupés en quatre et les tomates cerises.", 5);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Placer le poulet au four durant environ 1 heure 40 à 200°C. (Au bout de 20 min de cuisson, retourner le poulet et laisser cuire 20 min, puis le replacer à l'endroit pour la suite de la cuisson)", 6);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Attention : Arroser le poulet avec son jus le plus souvent possible durant la cuisson (ajouter de l'eau si nécessaire). Le poulet n'en sera que plus moelleux !", 7);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (1, "Récupérer le jus à la fin de la cuisson, avec les tomates et les oignons, dans un bol, et placer sur la table, avec une belle salade verte et une poêlée de pommes de terres nouvelles.", 8);

INSERT INTO `recipe`(`name`, `time`, `favorite`, `skill`) VALUES('Frita', '1h20', false, 'très facile');

INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (2, "tomates (mûres)", 6);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (2, "poivrons verts", 4);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (2, "oignons", 2);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (2, "gousses d' ail", 2);
INSERT INTO `ingredients`(`recipeId`, `description`, `quantity`) VALUES (2, "feuille de laurier", 1);

INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Couper les poivrons en petits morceaux, une fois nettoyés et débarrassés de leurs graines.", 1);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Les faire revenir dans de l'huile d'olive à feu fort dans un faitout.", 2);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Rajouter les oignons et l'ail coupés très fins eux aussi, remuer le tout pour roussir un peu. Baisser le feu et rajouter les tomates en petits morceaux (pelées si possible car c'est meilleur, après les avoir ébouillantées).", 3);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Laisser mijoter le tout à feu très doux en couvrant un peu : plus on laisse mijoter, meilleur c'est(2 heures de cuisson à feu très doux c'est encore mieux!).", 4);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Les légumes fondent, le temps de cuisson long est vraiment le secret de la réussite.", 5);
INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES (2, "Saler et poivrer à votre convenance.", 6);