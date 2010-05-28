# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100528164501) do

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patches", :force => true do |t|
    t.string   "name"
    t.float    "spectral_1"
    t.float    "spectral_2"
    t.float    "spectral_3"
    t.float    "spectral_4"
    t.float    "spectral_5"
    t.float    "spectral_6"
    t.float    "spectral_7"
    t.float    "spectral_8"
    t.float    "spectral_9"
    t.float    "spectral_10"
    t.float    "spectral_11"
    t.float    "spectral_12"
    t.float    "spectral_13"
    t.float    "spectral_14"
    t.float    "spectral_15"
    t.float    "spectral_16"
    t.float    "spectral_17"
    t.float    "spectral_18"
    t.float    "spectral_19"
    t.float    "spectral_20"
    t.float    "spectral_21"
    t.float    "spectral_22"
    t.float    "spectral_23"
    t.float    "spectral_24"
    t.float    "spectral_25"
    t.float    "spectral_26"
    t.float    "spectral_27"
    t.float    "spectral_28"
    t.float    "spectral_29"
    t.float    "spectral_30"
    t.float    "spectral_31"
    t.float    "spectral_32"
    t.float    "spectral_33"
    t.float    "spectral_34"
    t.float    "spectral_35"
    t.float    "spectral_36"
    t.float    "rgb_r"
    t.float    "rgb_g"
    t.float    "rgb_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readings", :force => true do |t|
    t.integer  "job_id"
    t.integer  "patch_id"
    t.float    "spectral_1"
    t.float    "spectral_2"
    t.float    "spectral_3"
    t.float    "spectral_4"
    t.float    "spectral_5"
    t.float    "spectral_6"
    t.float    "spectral_7"
    t.float    "spectral_8"
    t.float    "spectral_9"
    t.float    "spectral_10"
    t.float    "spectral_11"
    t.float    "spectral_12"
    t.float    "spectral_13"
    t.float    "spectral_14"
    t.float    "spectral_15"
    t.float    "spectral_16"
    t.float    "spectral_17"
    t.float    "spectral_18"
    t.float    "spectral_19"
    t.float    "spectral_20"
    t.float    "spectral_21"
    t.float    "spectral_22"
    t.float    "spectral_23"
    t.float    "spectral_24"
    t.float    "spectral_25"
    t.float    "spectral_26"
    t.float    "spectral_27"
    t.float    "spectral_28"
    t.float    "spectral_29"
    t.float    "spectral_30"
    t.float    "spectral_31"
    t.float    "spectral_32"
    t.float    "spectral_33"
    t.float    "spectral_34"
    t.float    "spectral_35"
    t.float    "spectral_36"
    t.float    "rgb_r"
    t.float    "rgb_g"
    t.float    "rgb_b"
    t.float    "l"
    t.float    "b"
    t.float    "c"
    t.float    "h"
    t.float    "de"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end
