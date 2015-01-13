class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :guest_count

      t.timestamps
    end
  end
end
