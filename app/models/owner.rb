class Owner < ApplicationRecord
    validates :name, presence: true
    has_many :car
end
