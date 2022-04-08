class AddColToVehicle < ActiveRecord::Migration[7.0]
  def change 
    add_reference :vehicles, :owner,  foreign_key: {to_table: :users}
  end
end
