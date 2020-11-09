class CreateLevelRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :level_rooms do |t|
      t.integer :level_id
      t.integer :room_id

      t.timestamps
    end
  end
end
