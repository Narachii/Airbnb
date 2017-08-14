class AddColumn3ToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :price, :integer
  end
end
