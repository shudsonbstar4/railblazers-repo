class AddMultipleColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :address_street, :string
    add_column :users, :address_city, :string
    add_column :users, :address_state, :string
    add_column :users, :address_zip, :string
    add_column :users, :bio, :text
    add_column :users, :show, :boolean
    add_column :users, :plan_type, :string
  end
end
