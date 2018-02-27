class AddCarRefToOwners < ActiveRecord::Migration[5.1]
  def change
    add_reference :owners, :car_id, foreign_key: true
  end
end
