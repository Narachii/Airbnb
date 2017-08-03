class AddColumnToRoom < ActiveRecord::Migration[5.0]
  def change
  	add_column :rooms, :progress, :boolean, default: false, null: false
  end
end
