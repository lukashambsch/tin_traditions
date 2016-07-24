class CreateGiftEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :gift_entries do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tin, index: true
      t.date :received_date
      t.text :contents
      t.text :message

      t.timestamps
    end
  end
end
