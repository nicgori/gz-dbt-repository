SELECT
    q.orders_id,
    q.date_date,
    q.quantity,
    pp.purchase_price,
    q.revenue,
    q.quantity * pp.purchase_price AS purchase_cost,
    q.revenue - (q.quantity * pp.purchase_price) AS margin
FROM {{ref("stg_raw__sales")}} q
LEFT JOIN {{ref("stg_raw__product")}} pp 
USING (products_id)