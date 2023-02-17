/*1- QUAL TIMES TEVE MAIS ABATES ?*/


USE league_of_legends;

SELECT COUNT(TIMES)
FROM Kills
WHERE Times="Azul" AND Partida_id=1;

SELECT COUNT(TIMES)
FROM Kills
WHERE Times="Azul" AND Partida_id=2;

SELECT COUNT(TIMES)
FROM Kills
WHERE Times="Vermelho" AND Partida_id=1;

SELECT COUNT(TIMES)
FROM Kills
WHERE Times="Vermelho" AND Partida_id=2;
