class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :org_id
      t.string :name

      t.timestamps
    end
  end
end
