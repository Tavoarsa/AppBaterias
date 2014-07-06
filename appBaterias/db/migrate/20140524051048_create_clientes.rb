class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :cedula
      t.string :nombreCliente
      t.string :direccion
      t.integer :telefono1
      t.integer :telefono2
      t.string :email
      t.string :tipoCliente
      t.float :maximoCredito
      t.float :interes
      t.string :comentarios

      t.timestamps
    end
  end
end
