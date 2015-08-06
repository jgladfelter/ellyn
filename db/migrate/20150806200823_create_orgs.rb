class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :name
      t.float :rating
      t.string :phone_number
      t.string :contact_name
      t.string :email

      t.timestamps
    end
  end
end
