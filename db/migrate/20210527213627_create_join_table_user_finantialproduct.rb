class CreateJoinTableUserFinantialproduct < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :finantial_products do |t|
      # t.index [:user_id, :finantial_product_id]
      # t.index [:finantial_product_id, :user_id]
    end
  end
end
