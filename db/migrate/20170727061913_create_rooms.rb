class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
    	t.integer :host_id,	null: false,foreign_key: true
			t.string	:name, null: false
			t.text  	:image,	null: false
			t.integer	:price,	null: false
			t.integer :availability
			t.integer :accomodate, null: false
			t.integer :bathrooms, null: false
			t.integer :Bed_rooms, null: false
			t.integer	:Beds, null: false
			t.string  :property_type, null: false
			t.integer :cleaning_fee
			t.text 		:location,null: false
			t.float 	:latitude
			t.float 	:longitude
      t.timestamps
    end
  end
end
