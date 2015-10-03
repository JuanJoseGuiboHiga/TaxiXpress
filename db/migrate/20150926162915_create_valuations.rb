class CreateValuations < ActiveRecord::Migration
  def change
    create_table :valuations do |t|
      t.string :description_valuation

      t.timestamps null: false
    end
  end
end
