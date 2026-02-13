with cleaned and renamed as(
  select
  trim ("product_id") as 	product_id,
  trim ("product_name") as product_name,
  trim ("category") as 	category",
  trim ("brand") as brand,
  trim ("seller") as seller,		
  trim ("seller_city") as seller_city,	
  trim ("price") as price,
  trim ("discount_percent") as discount_percent,		
  trim ("final_price") as final_price,	
  trim ("rating") as rating,
  trim ("review_count") as review_count,
  trim ("stock_available") as stock_available,
  trim ("units_sold") as units_sold,
  trim ("listing_date")	as listing_date,	
  trim ("delivery_days") as delivery_days,
  trim ("weight_g") as weight_g,	
  trim ("warranty_months") as warranty_months,
  trim ("color") as color,	
  trim ("size")	as size,
  trim ("return_policy_days") as return_policy_days,	
  trim ("is_returnable") as is_returnable,
  trim ("payment_modes") as payment_modes,
  trim ("shipping_weight_g") as shipping_weight_g,
  trim ("product_score") as product_score,
  trim ("seller_rating") as seller_rating

  from {{ source('flipkart_order_details', 'FLIPKARD') }}
  )
  SELECT * FROM cleaned and renamed 
