# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160227205528) do

  create_table "actor_movies", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.string   "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "imdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.string   "imdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors_movies", id: false, force: :cascade do |t|
    t.integer "movie_id",    null: false
    t.integer "director_id", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "year"
    t.string   "runtime"
    t.string   "url_poster"
    t.string   "imdb_id"
    t.text     "simple_plot"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "movies_writers", id: false, force: :cascade do |t|
    t.integer "movie_id",  null: false
    t.integer "writer_id", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.string   "album"
    t.string   "year"
    t.string   "genre"
    t.integer  "popularity"
    t.text     "artists"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cover"
  end

  create_table "writers", force: :cascade do |t|
    t.string   "name"
    t.string   "imdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
