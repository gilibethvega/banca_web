class CreateWorkerTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
