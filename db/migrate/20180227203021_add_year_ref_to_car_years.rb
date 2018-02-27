class AddYearRefToCarYears < ActiveRecord::Migration[5.1]
  def change
    add_reference :car_years, :year_id, foreign_key: true
  end
end
