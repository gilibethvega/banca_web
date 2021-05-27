class CreateFinantialProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :finantial_products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :url
      t.boolean :visibility
      t.references :institution_type, foreign_key: true

      t.timestamps
    end
  end
end
