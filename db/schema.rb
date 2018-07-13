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

ActiveRecord::Schema.define(version: 20180614011659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.string "file_uid", null: false
    t.string "attachable_type"
    t.bigint "attachable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachable_type", "attachable_id"], name: "index_attachments_on_attachable_type_and_attachable_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "episode_number", null: false
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_number"], name: "index_episodes_on_episode_number"
    t.index ["season_id"], name: "index_episodes_on_season_id"
    t.index ["title"], name: "index_episodes_on_title"
  end

  create_table "evaluations", force: :cascade do |t|
    t.bigint "serie_id"
    t.bigint "profile_id"
    t.integer "rating"
    t.string "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_evaluations_on_profile_id"
    t.index ["serie_id"], name: "index_evaluations_on_serie_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "email"
    t.string "birthday"
    t.string "about"
    t.string "avatar_link"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["uid", "provider"], name: "index_profiles_on_uid_and_provider", unique: true
  end

  create_table "progresses", force: :cascade do |t|
    t.bigint "viewer_id"
    t.bigint "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_progresses_on_episode_id"
    t.index ["viewer_id"], name: "index_progresses_on_viewer_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.bigint "serie_id"
    t.integer "season_number", null: false
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_number"], name: "index_seasons_on_season_number"
    t.index ["serie_id"], name: "index_seasons_on_serie_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "title", null: false
    t.string "about"
    t.string "launch_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_series_on_title"
  end

  create_table "viewers", force: :cascade do |t|
    t.bigint "serie_id"
    t.bigint "profile_id"
    t.string "status", default: "watching", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_viewers_on_profile_id"
    t.index ["serie_id"], name: "index_viewers_on_serie_id"
    t.index ["status"], name: "index_viewers_on_status"
  end

end
