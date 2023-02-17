/*3- ESTRUTURAS DESTRUIDAS?*/


USE league_of_legends;

SELECT COUNT(TIMES)
FROM Estruturas
WHERE Times="Azul" AND Partida_id=1;

SELECT COUNT(TIMES)
FROM Estruturas
WHERE Times="Vermelho" AND Partida_id=1;

SELECT COUNT(TIMES)
FROM Estruturas
WHERE Times="Azul" AND Partida_id=2;

SELECT COUNT(TIMES)
FROM Estruturas
WHERE Times="Vermelho" AND Partida_id=2;
