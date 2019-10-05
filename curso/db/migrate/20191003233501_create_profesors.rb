class CreateProfesors < ActiveRecord::Migration[6.0]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :rut
      t.string :email
      t.float :calificacion

      t.timestamps
    end
  end
end
