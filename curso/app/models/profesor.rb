class Profesor < ApplicationRecord
  has_many :clases
  has_many :evaluacions
end
