class CreateClases < ActiveRecord::Migration[6.0]
  def change
    create_table :clases do |t|
      t.string :nombre
      t.integer :periodo
      t.references :profesor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
