class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def up
  	change_column :users, :phone_number, :integer, limit: 8, null: true
  end

  def down
  	change_column :users, :phone_number, :integer,null: true
	end
end
