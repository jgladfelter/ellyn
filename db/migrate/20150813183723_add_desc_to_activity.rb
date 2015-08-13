class AddDescToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :desc, :string
  end
end
