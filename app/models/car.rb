class Car < ApplicationRecord
    validates :make, :model, presence: true
    has_many :car_year
    belongs_to :owner
end
