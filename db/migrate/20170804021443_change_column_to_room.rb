class ChangeColumnToRoom < ActiveRecord::Migration[5.0]
  def up
  	change_column :rooms, :name, :string, null: true
  end

  def down
  	change_column :rooms, :name, :string,	null: false
  end
end
