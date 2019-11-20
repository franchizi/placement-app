class RemoveAdminFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :admin, :boolean
    remove_column :users, :license_holder, :boolean
  end
end
