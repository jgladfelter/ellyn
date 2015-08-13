class AddDescToOrgs < ActiveRecord::Migration
  def change
    add_column :orgs, :desc, :string
  end
end
