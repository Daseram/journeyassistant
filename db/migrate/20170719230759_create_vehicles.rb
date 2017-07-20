class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :color
      t.integer :category
      t.string :year

      t.timestamps null: false
    end
  end
end
