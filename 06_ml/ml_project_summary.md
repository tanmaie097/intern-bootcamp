Hands-On Tasks

Define a small predictive goal (e.g., predict repeat purchase or payment failure).

Build the entire pipeline: preprocessing → modeling → evaluation → interpretation.

Present the project in a structured notebook.

Write a concise summary linking insights to potential actions.


GOAL: predict repeat purchase 

load -> check data is clean -> join -> get req features 
join csv files with
pd.merge(X,Y,on='', how = '')

why left join: even if the customers have not placed any order they should
be inclusive to predict and not be biased and build a balanced predictive model

so after joining this is how the table is 
'customer_id', 'name', 'email', 'phone', 'city', 'country',
    'created_at', 'order_id', 'order_date', 'status', 'product_id', 'quantity', 'unit_price', 'total_price' 

pick relevant features 
- customer_id, order_id, order_date, status, 'product_id', 'quantity', 'unit_price', 'total_price'

group the customers 
 target -> repeat_purchase : count if 1 customer has more than one order so if >= 2 then 1 else 0 

customer_id          int64
order_id             int64
total_spent_avg    float64
total_quantity     float64
unique_prod          int64

