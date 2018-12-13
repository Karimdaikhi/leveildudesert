json.extract! order, :id, :name, :firstname, :adress, :city, :zipcode, :comment, :email, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
