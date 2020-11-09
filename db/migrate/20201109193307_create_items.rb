class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :room_id
      t.string :description
      t.string :image_path

      t.timestamps
    end
  end
end
