class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
    	t.date :data_in
    	t.date :date_out
    	t.integer :user_id, foreign_key: true
    	t.integer :room_id, foreign_key: true
      t.timestamps
    end
  end
end
