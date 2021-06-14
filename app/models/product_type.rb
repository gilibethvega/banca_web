class ProductType < ApplicationRecord
    has_many :finantial_products, dependent: :destroy
    has_many :post, dependent: :destroy
    def to_s
      name
    end
end
