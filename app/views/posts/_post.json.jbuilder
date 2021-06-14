json.extract! post, :id, :author, :title, :description, :image, :url, :product_type_id, :created_at, :updated_at
json.url post_url(post, format: :json)
