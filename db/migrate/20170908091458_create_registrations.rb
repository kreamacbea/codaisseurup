class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :event_id
      t.decimal :price
      t.string :status
      t.decimal :guest_count

      t.timestamps
    end
  end
end
