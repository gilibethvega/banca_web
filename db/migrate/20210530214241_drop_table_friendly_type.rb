class DropTableFriendlyType < ActiveRecord::Migration[5.2]
  def change
    drop_table :friendly_types
  end
end
