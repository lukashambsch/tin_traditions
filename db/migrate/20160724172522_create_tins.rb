class CreateTins < ActiveRecord::Migration[5.0]
  def change
    create_table :tins do |t|
      t.string :pin
      t.string :serial_number
      t.date :purchase_date
      t.string :order_number

      t.timestamps
    end
  end
end
