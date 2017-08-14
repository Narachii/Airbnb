class AddColumn2ToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :progress_1, :boolean, default: false, null: false
    add_column :rooms, :progress_2, :boolean, default: false, null: false
  end
end