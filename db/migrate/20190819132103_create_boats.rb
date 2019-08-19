class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :capacity
      t.references :user, foreign_key: true
      t.float :lat
      t.float :lng
      t.float :price
      t.float :avarage_rating

      t.timestamps
    end
  end
end
