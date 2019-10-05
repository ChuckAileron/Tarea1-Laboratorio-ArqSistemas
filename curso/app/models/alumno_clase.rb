class AlumnoClase < ApplicationRecord
  belongs_to :alumno
  belongs_to :clase
end
