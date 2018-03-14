class Tipo < ApplicationRecord
    validates :nombre, presence: true, length: { maximum: 20 }
end