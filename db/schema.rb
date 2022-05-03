# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_02_164718) do

  create_table "admin", force: :cascade do |t|
    t.string "nome"
    t.integer "iduff"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campus", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.integer "numero"
    t.string "bairro"
    t.integer "cep"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "caronas", force: :cascade do |t|
    t.integer "users_id", null: false
    t.string "departure"
    t.string "arrival"
    t.integer "price"
    t.integer "passengers"
    t.datetime "date"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_caronas_on_users_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "carona_id", null: false
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carona_id"], name: "index_points_on_carona_id"
  end

  create_table "search_caronas", force: :cascade do |t|
    t.string "departure"
    t.string "arrival"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "uffmail"
    t.integer "login"
    t.boolean "active", default: true
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "points", "caronas"
end
