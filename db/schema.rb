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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110228070512) do

  create_table "fact_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facts", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facts", ["node_id"], :name => "index_facts_on_node_id"

  create_table "nodes", :force => true do |t|
    t.string   "name"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "normalized_facts", :force => true do |t|
    t.integer  "node_id"
    t.integer  "fact_name_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "normalized_facts", ["fact_name_id"], :name => "index_normalized_facts_on_fact_name_id"
  add_index "normalized_facts", ["node_id"], :name => "index_normalized_facts_on_node_id"

end
