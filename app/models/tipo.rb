class Tipo < ApplicationRecord
    before_save { self.nombre = nombre.capitalize }

    validates :nombre, presence: true, length: { maximum: 20 }
    
    has_many :ingredientes
end