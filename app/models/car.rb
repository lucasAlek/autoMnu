class Car < ApplicationRecord
    validates :make, :model, presence: true
end
