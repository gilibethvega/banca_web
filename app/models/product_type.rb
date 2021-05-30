class ProductType < ApplicationRecord
    has_many :finantial_products, dependent: :destroy
    has_many :post, dependent: :destroy
end
