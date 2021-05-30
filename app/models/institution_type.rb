class InstitutionType < ApplicationRecord
    has_many :products, dependent: :destroy
end
