class AddYearRefToCars < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :year_id, foreign_key: true
  end
end
