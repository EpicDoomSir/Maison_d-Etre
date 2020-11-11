class AddMaxItemsToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :max_items, :integer
    rename_column :rooms, :music_path, :difficulty
    change_column :rooms, :difficulty, :integer
  end
end
