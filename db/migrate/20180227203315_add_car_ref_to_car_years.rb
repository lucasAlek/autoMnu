class AddCarRefToCarYears < ActiveRecord::Migration[5.1]
  def change
    add_reference :car_years, :car_id, foreign_key: true
  end
end
