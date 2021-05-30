class FinantialProduct < ApplicationRecord
  belongs_to :institution_type
  belongs_to :product_type
  has_many :users, through: :finantial_product_users
end
