class CreateSpaceRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :space_rooms do |t|
      t.references :room, foreign_key: true
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
