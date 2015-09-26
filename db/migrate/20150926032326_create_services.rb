class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :address_origin
      t.string :address_end
      t.string :price
      t.string :paymentype
      t.string :calification
      t.string :observation
      t.references :client, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
