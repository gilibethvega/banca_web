class AddProductTypeToFinantialProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :finantial_products, :product_type, foreign_key: true
  end
end
