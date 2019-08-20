class AddColumnstoBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :length, :float
    add_column :boats, :description, :text
    add_column :boats, :room_number, :integer
    add_column :boats, :sleep_number, :integer
    add_column :boats, :bathroom_number, :integer
    add_column :boats, :deck_number, :integer
    add_column :boats, :gallons_per_hour, :integer
  end
end
