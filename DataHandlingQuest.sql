
mysql> INSERT INTO school (name, country, capacity) VALUES ('Ilvermorny School of Witchcraft and Wizardry', 'USA',300), ('Koldovstoretz', 'Russia', 125), ('Mahoutokoro School of Magic', 'Japan', 800), ('Uagadou School of Magic', 'Uganda', 350) ;
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM school;
+----+----------------------------------------------+----------+----------------+
| id | name                                         | capacity | country        |
+----+----------------------------------------------+----------+----------------+
|  1 | Hogwarts School of Witchcraft and Wizardry   |      450 | United Kingdom |
|  2 | Beauxbatons Academy of Magic                 |      550 | France         |
|  3 | Castelobruxo                                 |      380 | Brazil         |
|  4 | Durmstrang Institute                         |      570 | Norway         |
|  5 | Ilvermorny School of Witchcraft and Wizardry |      300 | USA            |
|  6 | Koldovstoretz                                |      125 | Russia         |
|  7 | Mahoutokoro School of Magic                  |      800 | Japan          |
|  8 | Uagadou School of Magic                      |      350 | Uganda         |
+----+----------------------------------------------+----------+----------------+
8 rows in set (0.00 sec)

mysql> UPDATE school SET country='Sweden' WHERE id=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT*FROM School;
+----+----------------------------------------------+----------+----------------+
| id | name                                         | capacity | country        |
+----+----------------------------------------------+----------+----------------+
|  1 | Hogwarts School of Witchcraft and Wizardry   |      450 | United Kingdom |
|  2 | Beauxbatons Academy of Magic                 |      550 | France         |
|  3 | Castelobruxo                                 |      380 | Brazil         |
|  4 | Durmstrang Institute                         |      570 | Sweden         |
|  5 | Ilvermorny School of Witchcraft and Wizardry |      300 | USA            |
|  6 | Koldovstoretz                                |      125 | Russia         |
|  7 | Mahoutokoro School of Magic                  |      800 | Japan          |
|  8 | Uagadou School of Magic                      |      350 | Uganda         |
+----+----------------------------------------------+----------+----------------+
8 rows in set (0.00 sec)

mysql> UPDATE school SET capacity=700 WHERE id=7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT*FROM school;
+----+----------------------------------------------+----------+----------------+
| id | name                                         | capacity | country        |
+----+----------------------------------------------+----------+----------------+
|  1 | Hogwarts School of Witchcraft and Wizardry   |      450 | United Kingdom |
|  2 | Beauxbatons Academy of Magic                 |      550 | France         |
|  3 | Castelobruxo                                 |      380 | Brazil         |
|  4 | Durmstrang Institute                         |      570 | Sweden         |
|  5 | Ilvermorny School of Witchcraft and Wizardry |      300 | USA            |
|  6 | Koldovstoretz                                |      125 | Russia         |
|  7 | Mahoutokoro School of Magic                  |      700 | Japan          |
|  8 | Uagadou School of Magic                      |      350 | Uganda         |
+----+----------------------------------------------+----------+----------------+
8 rows in set (0.00 sec)

mysql> DELETE from school where name LIKE '%magic%';
Query OK, 3 rows affected (0.01 sec)

mysql> SELECT *FROM SCHOOL;
+----+----------------------------------------------+----------+----------------+
| id | name                                         | capacity | country        |
+----+----------------------------------------------+----------+----------------+
|  1 | Hogwarts School of Witchcraft and Wizardry   |      450 | United Kingdom |
|  3 | Castelobruxo                                 |      380 | Brazil         |
|  4 | Durmstrang Institute                         |      570 | Sweden         |
|  5 | Ilvermorny School of Witchcraft and Wizardry |      300 | USA            |
|  6 | Koldovstoretz                                |      125 | Russia         |
+----+----------------------------------------------+----------+----------------+
5 rows in set (0.00 sec)
