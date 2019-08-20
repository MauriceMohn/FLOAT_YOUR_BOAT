class AddingColumnstoBookingTable < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :pickup_date, :string
    add_column :bookings, :return_date, :string
    add_column :bookings, :number_of_guests, :integer
  end
end
