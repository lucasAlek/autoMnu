class AddYearRefToCarYear < ActiveRecord::Migration[5.1]
  def change
    add_column :car_years, :year_id, :refernces
  end
end
