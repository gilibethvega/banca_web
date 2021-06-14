class AddIdToFinantialProductsUser < ActiveRecord::Migration[5.2]
  def change
    add_column :finantial_products_users, :id, :primary_key
  end
end
