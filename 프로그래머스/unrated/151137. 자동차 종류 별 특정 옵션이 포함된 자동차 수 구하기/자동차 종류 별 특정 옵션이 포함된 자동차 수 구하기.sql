select car_type, count(car_id) cars
from car_rental_company_car
where options like '%통풍시트%'
or options like '%열선시트%' 
or options like '%가죽시트%'
group by 1
order by 1