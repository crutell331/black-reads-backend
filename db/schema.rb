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

ActiveRecord::Schema.define(version: 2020_09_28_194208) do

  create_table "authors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "img"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "book_sub_genres", force: :cascade do |t|
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sub_genre_id"
    t.index ["book_id"], name: "index_book_sub_genres_on_book_id"
  end

  create_table "book_themes", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "theme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_themes_on_book_id"
    t.index ["theme_id"], name: "index_book_themes_on_theme_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "year_published"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover_img"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_genre_categories", force: :cascade do |t|
    t.integer "sub_genre_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_sub_genre_categories_on_genre_id"
    t.index ["sub_genre_id"], name: "index_sub_genre_categories_on_sub_genre_id"
  end

  create_table "sub_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book_sub_genres", "books"
  add_foreign_key "book_themes", "books"
  add_foreign_key "book_themes", "themes"
  add_foreign_key "books", "authors"
  add_foreign_key "sub_genre_categories", "genres"
  add_foreign_key "sub_genre_categories", "sub_genres"
end
