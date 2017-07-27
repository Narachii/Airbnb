class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
    	t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
