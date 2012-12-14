class AddUserlevelsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :AdminScreen, :boolean, :default => false
    add_column :users, :CanEditUsers, :boolean, :default => false
    add_column :users, :CanDeleteUsers, :boolean, :default => false
    add_column :users, :CanCreateUser, :boolean, :default => false
    add_column :users, :Active, :boolean, :default => true
    add_column :users, :UserStatus, :string

  end
end
