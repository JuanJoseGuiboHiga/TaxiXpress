class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :description
      t.string :origin
      t.string :end
      t.string :price

      t.timestamps null: false
    end
  end
end
