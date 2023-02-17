/*4- QUAL PARTIDA DUROU MAIS?*/

USE league_of_legends;

SELECT Duração_da_partida,Partida_id 
FROM Informações_da_partida
ORDER BY Duração_da_partida DESC;