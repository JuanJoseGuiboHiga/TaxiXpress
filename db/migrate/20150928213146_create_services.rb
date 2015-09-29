class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :route, index: true, foreign_key: true
      t.references :payment_type, index: true, foreign_key: true
      t.string :observation
      t.references :client, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true
      t.references :valuation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
