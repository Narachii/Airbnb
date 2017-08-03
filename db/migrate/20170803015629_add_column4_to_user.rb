class AddColumn4ToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :progress, :boolean, default: false, null: false
  end
end
