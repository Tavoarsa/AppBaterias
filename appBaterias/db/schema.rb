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

ActiveRecord::Schema.define(version: 20140524051220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.integer  "cedula"
    t.string   "nombreCliente"
    t.string   "direccion"
    t.integer  "telefono1"
    t.integer  "telefono2"
    t.string   "email"
    t.string   "tipoCliente"
    t.float    "maximoCredito"
    t.float    "interes"
    t.string   "comentarios"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventarios", force: true do |t|
    t.string   "codigoProducto"
    t.integer  "codigoProveedor"
    t.string   "descripcion"
    t.integer  "cantidad"
    t.float    "precioCosto"
    t.float    "utilidad"
    t.float    "impuesto"
    t.float    "precioVenta1"
    t.float    "precioVenta2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedors", force: true do |t|
    t.integer  "cedulaProveedor"
    t.string   "nombreProveedor"
    t.string   "nombreContacto"
    t.integer  "telefono1"
    t.integer  "telefono2"
    t.string   "email"
    t.float    "maximoCredito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
