class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :color
      t.string :fuel_type
      t.float :price

      t.timestamps
    end
  end
end
