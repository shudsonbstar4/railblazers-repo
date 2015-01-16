class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :group_id
      t.text :description
      t.integer :admin, array: true, default: []
      t.integer :members, array: true, default: []

      t.timestamps
    end
  end
end
