# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_19_011955) do

  create_table "filmes", force: :cascade do |t|
    t.string "nome"
    t.integer "genero_id"
    t.float "preco_de_locacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genero_id"], name: "index_filmes_on_genero_id"
  end

  create_table "generos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
