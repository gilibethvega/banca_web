class CreateFinantialInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :finantial_infos do |t|
      t.float :salary
      t.float :salary_extra
      t.integer :working_time
      t.references :user, foreign_key: true
      t.references :visa_type, foreign_key: true
      t.references :worker_type, foreign_key: true

      t.timestamps
    end
  end
end
