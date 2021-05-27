json.extract! finantial_product, :id, :name, :description, :image, :url, :visibility, :institution_type_id, :product_type_id, :created_at, :updated_at
json.url finantial_product_url(finantial_product, format: :json)
