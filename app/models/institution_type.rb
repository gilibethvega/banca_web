class InstitutionType < ApplicationRecord
    has_many :finantial_products, dependent: :destroy
    def to_s
        name
    end
end
