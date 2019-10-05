class CreateEvaluacions < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluacions do |t|
      t.integer :nota
      t.text :comentario
      t.references :profesor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
