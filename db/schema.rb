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

ActiveRecord::Schema.define(:version => 20130716145439) do

  create_table "afiliados", :force => true do |t|
    t.string  "estado",                :limit => 1,   :default => "1", :null => false
    t.integer "clave_excaja_afi"
    t.integer "clave_tipo_afi"
    t.integer "clave_numero_afi"
    t.integer "clave_coparticipe_afi"
    t.integer "clave_parentesco_afi"
    t.string  "leyaplicada_afi",       :limit => 2
    t.string  "apelnom_afi",           :limit => 200,                  :null => false
    t.string  "sexo_afi",              :limit => 1
    t.integer "estcivil_afi"
    t.string  "tipo_doc_afi",          :limit => 3
    t.integer "numero_doc_afi"
    t.date    "fenac_afi"
    t.integer "incapacidad_afi"
    t.date    "fech_alta_afi"
    t.string  "dom_calle_afi",         :limit => 200
    t.integer "dom_nro_afi"
    t.string  "dom_piso_afi",          :limit => 10
    t.string  "dom_dpto_afi",          :limit => 10
    t.integer "cod_pos_afi"
    t.integer "cug_pcia_afi"
    t.integer "cug_dpto_afi"
    t.integer "cug_loc_afi"
  end

  create_table "afiliados_excel", :force => true do |t|
    t.integer "clave_excaja"
    t.integer "clave_tipo"
    t.integer "clave_numero"
    t.integer "clave_coparticipe"
    t.integer "clave_parentesco"
    t.string  "leyaplicada",       :limit => 2
    t.string  "apelnom",           :limit => 200, :null => false
    t.string  "sexo",              :limit => 1
    t.integer "estcivil"
    t.string  "tipo_doc",          :limit => 3
    t.integer "numero_doc"
    t.date    "fenac"
    t.integer "incapacidad"
    t.date    "fech_alta"
    t.string  "dom_calle",         :limit => 200
    t.integer "dom_nro"
    t.string  "dom_piso",          :limit => 10
    t.string  "dom_dpto",          :limit => 10
    t.integer "cod_pos"
    t.integer "cug_pcia"
    t.integer "cug_dpto"
    t.integer "cug_loc"
  end

  create_table "audi_medi", :force => true do |t|
    t.integer "id_auditoria"
    t.integer "id_medicamento"
    t.date    "fecha_fin_autorizacion",      :null => false
    t.integer "cantidad_por_mes_autorizado", :null => false
  end

  create_table "auditoria_medica", :force => true do |t|
    t.integer "id_afiliado"
    t.date    "fecha_auditoria", :null => false
    t.integer "id_medicos"
  end

  create_table "auth_cas", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_on"
    t.string   "url",        :limit => 512
    t.string   "uuid",       :limit => 512
  end

  create_table "auth_event", :force => true do |t|
    t.datetime "time_stamp"
    t.string   "client_ip",   :limit => 512
    t.integer  "user_id"
    t.string   "origin",      :limit => 512
    t.text     "description"
  end

  create_table "auth_group", :force => true do |t|
    t.string "role",        :limit => 512
    t.text   "description"
  end

  create_table "auth_membership", :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "auth_permission", :force => true do |t|
    t.integer "group_id"
    t.string  "name",       :limit => 512
    t.string  "table_name", :limit => 512
    t.integer "record_id"
  end

  create_table "auth_user", :force => true do |t|
    t.string "first_name",         :limit => 128
    t.string "last_name",          :limit => 128
    t.string "username",           :limit => 128
    t.string "email",              :limit => 512
    t.string "password",           :limit => 512
    t.string "registration_key",   :limit => 512
    t.string "reset_password_key", :limit => 512
    t.string "registration_id",    :limit => 512
  end

  create_table "avisos", :force => true do |t|
    t.integer "stock_minimo"
    t.integer "dias_anti"
  end

  create_table "cargar_archivo", :force => true do |t|
    t.string "nombre_archivo", :limit => 512
  end

  create_table "departamento", :force => true do |t|
    t.string  "estado",       :limit => 1,   :default => "1", :null => false
    t.integer "codigo_depto"
    t.string  "nombre_depto", :limit => 200,                  :null => false
  end

  create_table "diagnosticos", :force => true do |t|
    t.string "estado",             :limit => 1,   :default => "1", :null => false
    t.string "nombre_diagnostico", :limit => 300,                  :null => false
    t.string "codigo_diagnostico", :limit => 10
  end

  create_table "especialidad", :force => true do |t|
    t.string "estado",              :limit => 1,   :default => "1", :null => false
    t.string "nombre_especialidad", :limit => 512
  end

  create_table "lab_lote", :force => true do |t|
    t.string  "estado",                     :limit => 1,   :default => "1", :null => false
    t.integer "cantidad_medi",                                              :null => false
    t.date    "fecha_vencimiento_lab_lote",                                 :null => false
    t.string  "lote_lab_lote",              :limit => 512,                  :null => false
    t.integer "id_laboratorio"
    t.integer "id_remito"
    t.integer "id_medicamento"
  end

  create_table "laboratorios", :force => true do |t|
    t.string "estado",             :limit => 1,   :default => "1", :null => false
    t.string "nombre_laboratorio", :limit => 250,                  :null => false
  end

  add_index "laboratorios", ["nombre_laboratorio"], :name => "laboratorios_nombre_laboratorio_key", :unique => true

  create_table "localidades", :force => true do |t|
    t.string  "estado",             :limit => 1,   :default => "1", :null => false
    t.integer "provincia_local"
    t.integer "departamento_local"
    t.integer "localidad_local"
    t.integer "codigopostal_local"
    t.string  "nombre_local",       :limit => 200,                  :null => false
  end

  create_table "localidades_excel", :force => true do |t|
    t.integer "provincia"
    t.integer "departamento"
    t.integer "localidad"
    t.integer "codigopostal"
    t.string  "nombre_loc",   :limit => 200, :null => false
  end

  create_table "medi_pedido", :force => true do |t|
    t.string  "estado",               :limit => 1,   :default => "1", :null => false
    t.integer "id_medicamento"
    t.integer "id_pedido"
    t.integer "cantidad_medi_pedido",                                 :null => false
    t.string  "comentario",           :limit => 500
  end

  create_table "medi_preadjudicados", :force => true do |t|
    t.string  "estado",                  :limit => 1, :default => "1", :null => false
    t.integer "id_medicamento"
    t.integer "id_pre_adjudicacion"
    t.integer "cantidad_pre_adjudicada",                               :null => false
    t.float   "precio_pre_adjudicada",                                 :null => false
    t.float   "precio_pre_por_cantidad"
    t.integer "nro_item",                                              :null => false
  end

  create_table "medicamentos", :force => true do |t|
    t.string "estado",                  :limit => 1,   :default => "1", :null => false
    t.string "nombre_medicamento",      :limit => 200,                  :null => false
    t.string "codigo_univ",             :limit => 50
    t.string "descripcion_medicamento", :limit => 500
  end

  create_table "medicamentos_orden", :force => true do |t|
    t.integer "id_medicamento"
    t.integer "id_orden"
    t.integer "cantidad_medi_orden"
    t.string  "en_profe_medi_orden",         :limit => 1
    t.string  "hospital_entrega_medi_orden", :limit => 1
    t.string  "famacia_entrega_medi_orden",  :limit => 1
    t.string  "por_auditoria_medi_orden",    :limit => 1
    t.integer "id_lab_lote"
  end

  create_table "medicos", :force => true do |t|
    t.string  "estado",                 :limit => 1,   :default => "1", :null => false
    t.integer "matricula_medico",                                       :null => false
    t.string  "apellido_nombre_medico", :limit => 200,                  :null => false
    t.string  "telefono_medico",        :limit => 50
    t.integer "id_especialidad"
  end

  add_index "medicos", ["matricula_medico"], :name => "medicos_matricula_medico_key", :unique => true

  create_table "ordenes", :force => true do |t|
    t.string  "estado",               :limit => 1, :default => "1", :null => false
    t.date    "fecha_orden",                                        :null => false
    t.integer "cantidad_total_orden",                               :null => false
    t.integer "id_diagnostico"
    t.string  "tipo_salud_orden",     :limit => 1
    t.integer "id_afiliado"
    t.integer "id_medicos"
  end

  create_table "pedidos", :force => true do |t|
    t.string "estado",       :limit => 1, :default => "1", :null => false
    t.date   "fecha_pedido",                               :null => false
  end

  create_table "pre_adjudicacion", :force => true do |t|
    t.string  "estado",                 :limit => 1,  :default => "1", :null => false
    t.integer "id_pedido"
    t.integer "id_proveedor"
    t.date    "fecha_pre_adjudicacion",                                :null => false
    t.string  "nro_expediente",         :limit => 40,                  :null => false
    t.float   "precio_total_pre"
  end

  create_table "proveedores", :force => true do |t|
    t.string "estado",              :limit => 1,   :default => "1", :null => false
    t.string "nombre_proveedor",    :limit => 250,                  :null => false
    t.string "cuit_cuil",           :limit => 11
    t.string "domicilio_proveedor", :limit => 200
    t.string "telefono_proveedor",  :limit => 30
  end

  create_table "provincias", :force => true do |t|
    t.string  "estado",      :limit => 1,   :default => "1", :null => false
    t.integer "codigo_prov"
    t.string  "nombre_prov", :limit => 200,                  :null => false
  end

  create_table "remito_entrega", :force => true do |t|
    t.string  "estado",                     :limit => 1,   :default => "1", :null => false
    t.integer "nro_remito",                                                 :null => false
    t.date    "fecha_remito",                                               :null => false
    t.string  "descripcion_remito_entrega", :limit => 500
    t.integer "id_proveedor"
  end

  create_table "stock_medicamentos", :force => true do |t|
    t.string  "estado",         :limit => 1, :default => "1", :null => false
    t.integer "cantidad_stock",                               :null => false
    t.integer "id_lab_lote"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
