# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_06_145544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumno_clases", force: :cascade do |t|
    t.integer "alumno_id"
    t.integer "clase_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clases", force: :cascade do |t|
    t.string "nombre"
    t.integer "periodo"
    t.bigint "profesor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profesor_id"], name: "index_clases_on_profesor_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "texto"
    t.bigint "clase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clase_id"], name: "index_comentarios_on_clase_id"
  end

  create_table "evaluacions", force: :cascade do |t|
    t.integer "nota"
    t.text "comentario"
    t.bigint "profesor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profesor_id"], name: "index_evaluacions_on_profesor_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.string "correo"
    t.float "calificacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clases", "profesors"
  add_foreign_key "comentarios", "clases"
  add_foreign_key "evaluacions", "profesors"
end
