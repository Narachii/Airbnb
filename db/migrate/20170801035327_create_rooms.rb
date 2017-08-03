class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
    	t.integer :host_id, null: false, foreign_key: true
    	t.string :name, null: false
    	t.text :description
    	t.text :image
    	t.string :place_type
    	t.string :property_type
    	t.string :room_type
    	t.integer :guest_number
    	t.integer :bedroom
    	t.integer :bed
    	t.integer :bathroom
    	t.string :country
    	t.integer :zipcode
    	t.text :state
    	t.text :city
    	t.text :street_address
    	t.text :optional
    	t.float :lattitude
    	t.float :longitude
      t.timestamps
    end
  end
end
