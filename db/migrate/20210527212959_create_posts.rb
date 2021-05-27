class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :description
      t.string :image
      t.string :url
      t.references :product_type, foreign_key: true

      t.timestamps
    end
  end
end
