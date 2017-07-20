class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :vehicle_id
      t.string :passenger_id
      t.string :initial_point
      t.string :final_point

      t.timestamps null: false
    end
  end
end
