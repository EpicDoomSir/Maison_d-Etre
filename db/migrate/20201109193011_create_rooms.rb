class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :artwork_path
      t.string :music_path

      t.timestamps
    end
  end
end
