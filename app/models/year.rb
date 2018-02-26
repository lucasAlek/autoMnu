class Year < ApplicationRecord
    validates :year, presence: true
    has_many :car_year
end
