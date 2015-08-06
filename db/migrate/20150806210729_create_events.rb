class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :activity_id
      t.float :age_min
      t.float :age_max
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.float :price

      t.timestamps
    end
  end
end
