class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text  :body
      t.string  :image
      t.integer :user_id, :null => false
      t.timestamps
    end
    add_foreign_key :messages, :users
  end
end
