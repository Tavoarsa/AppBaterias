class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.integer :cedulaProveedor
      t.string :nombreProveedor
      t.string :nombreContacto
      t.integer :telefono1
      t.integer :telefono2
      t.string :email
      t.float :maximoCredito

      t.timestamps
    end
  end
end
