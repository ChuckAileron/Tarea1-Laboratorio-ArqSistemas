class Alumno < ApplicationRecord
  has_many :alumno_clases
  validates :nombre, presence: true,
                    length: { minimum: 5 }
end
