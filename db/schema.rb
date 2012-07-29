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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120729031902) do

  create_table "barajas", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "edicion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "caracteristica_carta", :force => true do |t|
    t.integer  "carta_id"
    t.integer  "caracterisitca_id"
    t.float    "valor"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "caracteristicas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "carta", :force => true do |t|
    t.integer  "id_baraja"
    t.string   "nombre"
    t.string   "numeroletra"
    t.string   "letras"
    t.string   "colores"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "imagen_small"
    t.string   "imagen_big"
  end

  create_table "partidas", :force => true do |t|
    t.integer  "baraja_id"
    t.integer  "creador_id"
    t.integer  "ganador_id"
    t.date     "fecha_fin"
    t.integer  "cantidad_jugadores"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.boolean  "estado",             :default => false
    t.string   "nombre"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuario_partidas", :force => true do |t|
    t.integer  "partida_id"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
