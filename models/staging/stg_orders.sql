select *, ordersellingprice - ordercostprice as orderprofit
from 
{{ref('raw_orders')}} as raw_orders
left join {{ ref('raw_customer') }} as raw_customer
on raw_orders.customerid = raw_customer.customerid