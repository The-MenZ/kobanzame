json.extract! product, :id, :design_id, :name, :description, :price, :sale_status, :active, :created_user_id, :updated_user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
