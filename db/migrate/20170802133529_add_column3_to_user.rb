class AddColumn3ToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :image, :text
  end
end
