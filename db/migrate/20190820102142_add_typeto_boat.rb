class AddTypetoBoat < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :type, :string
  end
end
