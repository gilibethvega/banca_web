class FinantialProduct < ApplicationRecord
  belongs_to :institution_type
  belongs_to :product_type
end
