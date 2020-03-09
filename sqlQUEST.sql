mysql> select * from wizard;
+----+-----------+------------+------------+-------------+-------------------------------------------------------------+----------------------+
| id | firstname | lastname   | birthday   | birth_place | biography                                                   | is_muggle            |
+----+-----------+------------+------------+-------------+-------------------------------------------------------------+----------------------+
|  1 | harry     | potter     | 1980-07-31 | london      |                                                             | 0x00                 |
|  2 | hermione  | granger    | 1979-09-19 |             | Friend of Harry Potter                                      | 0x00                 |
|  3 | lily      | potter     | 1960-01-30 |             | mother of Harry Potter                                      | 0x00                 |
|  4 | ron       | weasley    | 1980-03-01 |             | Best friend of Harry                                        | 0x00                 |
|  5 | ginny     | weasley    | 1981-08-11 |             | Sister of Ron and girlfriend of Harry                       | 0x00                 |
|  6 | fred      | weasley    | 1978-04-01 |             |                                                             | 0x00                 |
|  7 | george    | weasley    | 1978-04-01 |             |                                                             | 0x00                 |
|  8 | arthur    | weasley    | 1950-02-06 |             |                                                             | 0x00                 |
|  9 | molly     | weasley    | 1949-01-01 |             |                                                             | 0x00                 |
| 10 | drago     | malefoy    | 1980-06-05 |             |                                                             | 0x00                 |
| 11 | albus     | dumbledore | 1881-07-01 |             |                                                             | 0x00                 |
| 12 | severus   | rogue      | 1960-01-09 |             |                                                             | 0x00                 |
| 13 | tom       | jÃ©dusor   | 1926-12-31 |             | Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom alias Voldermort | 0x00                 |
| 14 | dudley    | dursley    | 1980-06-23 |             | Cousin d'Harry                                              | 0x01                 |
+----+-----------+------------+------------+-------------+-------------------------------------------------------------+----------------------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM wizard WHERE birthday between '1975-01-01' AND '1985-01-01';
+----+-----------+----------+------------+-------------+---------------------------------------+----------------------+
| id | firstname | lastname | birthday   | birth_place | biography                             | is_muggle            |
+----+-----------+----------+------------+-------------+---------------------------------------+----------------------+
|  1 | harry     | potter   | 1980-07-31 | london      |                                       | 0x00                 |
|  2 | hermione  | granger  | 1979-09-19 |             | Friend of Harry Potter                | 0x00                 |
|  4 | ron       | weasley  | 1980-03-01 |             | Best friend of Harry                  | 0x00                 |
|  5 | ginny     | weasley  | 1981-08-11 |             | Sister of Ron and girlfriend of Harry | 0x00                 |
|  6 | fred      | weasley  | 1978-04-01 |             |                                       | 0x00                 |
|  7 | george    | weasley  | 1978-04-01 |             |                                       | 0x00                 |
| 10 | drago     | malefoy  | 1980-06-05 |             |                                       | 0x00                 |
| 14 | dudley    | dursley  | 1980-06-23 |             | Cousin d'Harry                        | 0x01                 |
+----+-----------+----------+------------+-------------+---------------------------------------+----------------------+
8 rows in set (0.01 sec)

mysql> SELECT * FROM wizard WHERE firstname LIKE 'h%';
+----+-----------+----------+------------+-------------+------------------------+----------------------+
| id | firstname | lastname | birthday   | birth_place | biography              | is_muggle            |
+----+-----------+----------+------------+-------------+------------------------+----------------------+
|  1 | harry     | potter   | 1980-07-31 | london      |                        | 0x00                 |
|  2 | hermione  | granger  | 1979-09-19 |             | Friend of Harry Potter | 0x00                 |
+----+-----------+----------+------------+-------------+------------------------+----------------------+
2 rows in set (0.03 sec)

mysql> SELECT * FROM wizard WHERE lastname LIKE '%potter%' ORDER BY firstname ASC;
+----+-----------+----------+------------+-------------+------------------------+----------------------+
| id | firstname | lastname | birthday   | birth_place | biography              | is_muggle            |
+----+-----------+----------+------------+-------------+------------------------+----------------------+
|  1 | harry     | potter   | 1980-07-31 | london      |                        | 0x00                 |
|  3 | lily      | potter   | 1960-01-30 |             | mother of Harry Potter | 0x00                 |
+----+-----------+----------+------------+-------------+------------------------+----------------------+
2 rows in set (0.02 sec)

mysql> SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 1;
+-----------+------------+------------+
| firstname | lastname   | birthday   |
+-----------+------------+------------+
| albus     | dumbledore | 1881-07-01 |
+-----------+------------+------------+
1 row in set (0.02 sec)

