class FinantialProductsUser < ApplicationRecord
    belongs_to :finantial_product
    belongs_to :user
    validates :user_id, uniqueness: {scope: :finantial_product_id}
end