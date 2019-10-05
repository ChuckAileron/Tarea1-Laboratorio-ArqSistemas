class Clase < ApplicationRecord
  has_many :alumno_clases
  has_many :comentarios
  belongs_to :profesor
end
