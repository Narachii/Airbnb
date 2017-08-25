class AddColumnToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :acceptance, :boolean, default: false, null: false
  end
end
