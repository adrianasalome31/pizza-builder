class Tipo < ApplicationRecord
    validates :nombre, presence: true, length: { maximum: 20 }
    
    has_many :ingredientes
end