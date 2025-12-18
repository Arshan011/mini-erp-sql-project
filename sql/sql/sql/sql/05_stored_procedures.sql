DELIMITER $$

CREATE PROCEDURE GetOrdersByCustomer(IN cust_id INT)
BEGIN
  SELECT o.order_id, o.order_date
  FROM Orders o
  WHERE o.customer_id = cust_id;
END $$

DELIMITER ;
