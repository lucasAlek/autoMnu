class Car < ApplicationRecord
    has_many :car_year
    has_one :owner
    validates :make, :model, presence: true

end
