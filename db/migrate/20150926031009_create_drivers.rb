class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name_driver
      t.string :address_driver
      t.string :telephone_driver
      t.string :status_driver
      t.string :placa_driver

      t.timestamps null: false
    end
  end
end
