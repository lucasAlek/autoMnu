class Car < ApplicationRecord
    vailidates make,model presence: true
end
