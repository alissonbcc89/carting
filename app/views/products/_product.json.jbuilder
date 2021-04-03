json.extract! product, :id, :name, :description, :image_url, :price, :expiraton_date, :purchase_price, :the_amount, :created_at, :updated_at
json.url product_url(product, format: :json)
