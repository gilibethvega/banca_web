class FinantialProductUsers < ApplicationRecord
    belongs_to :finantial_product
    belongs_to :user
    
end