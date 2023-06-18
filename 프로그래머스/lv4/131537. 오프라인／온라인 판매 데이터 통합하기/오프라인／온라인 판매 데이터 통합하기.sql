select 
    date_format(sales_date, '%Y-%m-%d') sales_date, 
    product_id, 
    user_id, 
    sales_amount
from online_sale n 
where sales_date like '2022-03%'
union all
select 
    date_format(sales_date, '%Y-%m-%d') sales_date, 
    product_id, 
    NULL user_id, 
    sales_amount
from offline_sale 
where sales_date like '2022-03%'
order by 1, 2, 3