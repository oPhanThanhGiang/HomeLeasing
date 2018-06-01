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

ActiveRecord::Schema.define(version: 20180601113211) do

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "imageablem_type"
    t.bigint "imageablem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageablem_type", "imageablem_id"], name: "index_images_on_imageablem_type_and_imageablem_id"
  end

  create_table "m_cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_direction_of_balconies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_direction_of_houses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_districts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_interiors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_paper_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_streets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_type_of_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_type_of_lands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_type_of_news", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_units", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "m_wards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "key_name"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "type_of_information_id"
    t.bigint "type_of_land_id"
    t.bigint "unit_id"
    t.bigint "city_id"
    t.bigint "district_id"
    t.bigint "ward_id"
    t.bigint "street_id"
    t.bigint "direction_of_house_id"
    t.bigint "direction_of_balcony_id"
    t.bigint "interior_id"
    t.bigint "type_of_new_id"
    t.string "price"
    t.string "area"
    t.text "address"
    t.text "title"
    t.text "content_posted"
    t.string "latitude"
    t.string "longitude"
    t.string "name_map"
    t.string "front"
    t.string "number_of_floors"
    t.string "number_of_bedrooms"
    t.string "number_of_toilets"
    t.string "access_road"
    t.datetime "start_day"
    t.datetime "end_date"
    t.string "security_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "type"
    t.index ["city_id"], name: "index_news_on_city_id"
    t.index ["direction_of_balcony_id"], name: "index_news_on_direction_of_balcony_id"
    t.index ["direction_of_house_id"], name: "index_news_on_direction_of_house_id"
    t.index ["district_id"], name: "index_news_on_district_id"
    t.index ["interior_id"], name: "index_news_on_interior_id"
    t.index ["street_id"], name: "index_news_on_street_id"
    t.index ["type_of_information_id"], name: "index_news_on_type_of_information_id"
    t.index ["type_of_land_id"], name: "index_news_on_type_of_land_id"
    t.index ["type_of_new_id"], name: "index_news_on_type_of_new_id"
    t.index ["unit_id"], name: "index_news_on_unit_id"
    t.index ["user_id"], name: "index_news_on_user_id"
    t.index ["ward_id"], name: "index_news_on_ward_id"
  end

  create_table "news_papers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "title"
    t.bigint "user_id"
    t.bigint "m_paper_type_id"
    t.text "content"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["m_paper_type_id"], name: "index_news_papers_on_m_paper_type_id"
    t.index ["user_id"], name: "index_news_papers_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "info"
    t.integer "phone"
    t.string "email"
    t.string "skype"
    t.integer "role"
    t.text "memo"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
