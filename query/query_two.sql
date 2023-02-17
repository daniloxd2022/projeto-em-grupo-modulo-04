/*2- QUAL TIME QUE MATOU MAIS DRAGÃO? */

USE league_of_legends;

SELECT COUNT(Monstro)
FROM Monstros
WHERE Monstro="Dragão" AND Partida_id=1 AND Times="Azul"
ORDER BY Times DESC;

SELECT COUNT(Monstro)
FROM Monstros
WHERE Monstro="Dragão" AND Partida_id=1 AND Times="Vermelho"
ORDER BY Times DESC;

SELECT COUNT(Monstro)
FROM Monstros
WHERE Monstro="Dragão" AND Partida_id=2 AND Times="Azul"
ORDER BY Times DESC;

SELECT COUNT(Monstro)
FROM Monstros
WHERE Monstro="Dragão" AND Partida_id=2 AND Times="Vermelho"
ORDER BY Times DESC;
