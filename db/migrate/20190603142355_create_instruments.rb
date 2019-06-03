class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :description
      t.boolean :sale
      t.boolean :rent
      t.integer :price
      t.integer :rate

      t.timestamps
    end
  end
end
