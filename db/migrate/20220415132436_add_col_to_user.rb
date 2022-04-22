class AddColToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :address, :text
    add_column :users, :contact_no, :integer 
  end
end
