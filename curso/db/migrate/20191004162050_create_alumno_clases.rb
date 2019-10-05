class CreateAlumnoClases < ActiveRecord::Migration[6.0]
  def change
    create_table :alumno_clases do |t|
      t.integer :alumno_id
      t.integer :clase_id

      t.timestamps
    end
  end
end
