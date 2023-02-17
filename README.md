# **Projeto em Grupo - Programadores Cariocas resilia Modulo 4**

###### *League of Legends *

Objetivo
> montar um dashboard com base no conjunto de dados
escolhidos pelo squad.
### Principais perguntas:


- QUAIS TIMES TEVE MAIS ABATES ?
```
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
```

- QUAL TIME QUE MATOU MAIS DRAGÃO?
```
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

```
- ESTRUTURAS DESTRUIDAS?
```
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
```
- QUAL PARTIDA DUROU MAIS?
```
USE league_of_legends;

SELECT Duração_da_partida,Partida_id 
FROM Informações_da_partida
ORDER BY Duração_da_partida DESC;
```

Feramentas Utilizadas:
- **Workbench MySQL**
- **Power Bi**
- **Canva**
- **Excel**

#### Instruções para importação e uso do banco de dados:
1.	Baixe os arquivos do repositório git;
2.	abra o o arquivo no MYSQL Workbench e execute

3.	Após esses procedimentos é possível executar as querys já existentes no repositório GIT.


**Direitos Autorais:**
*Rodrigo Oliveira, Monique Vieira, Danilo Nascimento*
