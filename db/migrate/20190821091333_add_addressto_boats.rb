class AddAddresstoBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :address, :string
  end
end
