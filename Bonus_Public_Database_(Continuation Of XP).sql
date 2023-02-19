-----Exercice XPNinja--------------

---Bonus Public Database (Continuation Of XP)---

---1.Fetch the last 2 customers in alphabetical order (A-Z) – exclude ‘id’ from the results.

SELECT * FROM customers ORDER BY customers.firstname DESC LIMIT 2;

---2.Use SQL to delete all purchases made by Scott.

DELETE FROM purchases WHERE purchases.customers_id = (SELECT customers_id FROM customers WHERE customers.lastname ='Scott' AND customers.firstname='Scott')

---3.Does Scott still exist in the customers table, even though he has been deleted? Try and find him.

SELECT * FROM customers WHERE customers.firstname LIKE '%Scott' OR customers.lastname LIKE '%Scott' 

---4.Use SQL to find all purchases. Join purchases with the customers table, so that Scott’s order will appear, although instead of the customer’s first and last

SELECT * FROM customers

LEFT JOIN purchases ON purchases.customers_id = customers.customers_id


