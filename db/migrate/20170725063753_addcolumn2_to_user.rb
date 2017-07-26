class Addcolumn2ToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :birthday_month, :integer, null: false
  	add_column :users, :birthday_day, :integer, null: false
  	add_column :users, :birthday_year, :integer, null: false
  end
end
