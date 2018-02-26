class CreateCarYears < ActiveRecord::Migration[5.1]
  def change
    create_table :car_years do |t|

      t.timestamps
    end
  end
end
