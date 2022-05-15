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

ActiveRecord::Schema[7.0].define(version: 2022_05_12_191758) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_games", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.bigint "game_id", null: false
    t.bigint "game_participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_games_on_card_id"
    t.index ["game_id"], name: "index_card_games_on_game_id"
    t.index ["game_participant_id"], name: "index_card_games_on_game_participant_id"
  end

  create_table "card_resources", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.bigint "resource_id", null: false
    t.integer "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_resources_on_card_id"
    t.index ["resource_id"], name: "index_card_resources_on_resource_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "type", null: false
    t.string "state"
    t.integer "value"
    t.integer "level"
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_cards_on_resource_id"
  end

  create_table "game_participants", force: :cascade do |t|
    t.integer "order"
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_participants_on_game_id"
    t.index ["order", "game_id"], name: "index_game_participants_on_order_and_game_id", unique: true
    t.index ["user_id"], name: "index_game_participants_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "state"
    t.string "invite_code"
    t.integer "players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invite_code"], name: "index_games_on_invite_code", unique: true
  end

  create_table "resources", force: :cascade do |t|
    t.string "type", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "card_games", "cards"
  add_foreign_key "card_games", "game_participants"
  add_foreign_key "card_games", "games"
  add_foreign_key "card_resources", "cards"
  add_foreign_key "card_resources", "resources"
  add_foreign_key "cards", "resources"
  add_foreign_key "game_participants", "games"
  add_foreign_key "game_participants", "users"
end
