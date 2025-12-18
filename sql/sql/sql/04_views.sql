CREATE VIEW Sales_Report AS
SELECT c.customer_name,
       p.product_name,
       od.quantity,
       p.price,
       (od.quantity * p.price) AS total_amount
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Product p ON od.product_id = p.product_id;
