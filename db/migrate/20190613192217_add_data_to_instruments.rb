class AddDataToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :contact, :string
  end
end
