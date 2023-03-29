-- TIEMPO

 SELECT Games.name  FROM Purchases
 JOIN Games ON Purchases.game_id = Games.id
 WHERE MONTH(Purchases.purchase_date) = 3;
 
+------------------------+
| name                   |
+------------------------+
| Super Mario Bros.      |
| Resident Evil 4 remake |
+------------------------+
2 rows in set (0.00 sec)


-- INDEX

-- INDEX 

-- JOIN

SELECT Developers.name, Developers.surname  FROM Developers  
INNER JOIN GamesDevelopers ON Developers.id = GamesDevelopers.developer_id  
INNER JOIN Games ON Games.id = GamesDevelopers.game_id  
WHERE Games.name = 'Resident Evil 4 remake';

+-----------+---------+
| name      | surname |
+-----------+---------+
| John      | Smith   |
| Jennifer  | Davis   |
| Isaac     | Clarke  |
| Manu      | Manolo  |
| Sebastian | Estacio |
| Amin      | Grande  |
+-----------+---------+
6 rows in set (0.00 sec)

-- JOIN

-- CTE

-- MERGE

-- ALL EARNINGS

SELECT SUM(price * 0.9) as Earnings FROM Purchases;
+----------+
| Earnings |
+----------+
|  278.946 |
+----------+
1 row in set (0.00 sec)



