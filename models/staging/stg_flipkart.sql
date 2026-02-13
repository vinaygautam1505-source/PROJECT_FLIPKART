with cleaned as(
  select
  trim ("PRODUCT_ID"),
  trim ("PRODUCT_NAME"),
  trim ("CATEGORY"),
  trim ("BRAND"),
  trim ("SELLER"),		
  trim ("SELLER_CITY"),	
  trim ("PRICE"),
  trim ("DISCOUNT_PERCENT"),		
  trim ("FINAL_PRICE"),	
  trim ("RATING"),
  trim ("REVIEW_COUNT"),
  trim ("STOCK_AVAILABLE"),
  trim ("UNITS_SOLD"),
  trim ("LISTING_DATE"),	
  trim ("DELIVERY_DAYS"),
  trim ("WEIGHT_G"),	
  trim ("WARRANTY_MONTHS"),
  trim ("COLOR"),	
  trim ("SIZE"),
  trim ("RETURN_POLICY_DAYS"),	
  trim ("IS_RETURNABLE"),
  trim ("PAYMENT_MODES"),
  trim ("SHIPPING_WEIGHT_G"),
  trim ("PRODUCT_SCORE"),
  trim ("SELLER_RATING") 

  from {{ source('flipkart_order_details', 'FLIPKARD') }}
  )
  SELECT * FROM cleaned
