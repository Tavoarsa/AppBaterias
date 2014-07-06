class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :codigoProducto
      t.integer :codigoProveedor
      t.string :descripcion
      t.integer :cantidad
      t.float :precioCosto
      t.float :utilidad
      t.float :impuesto
      t.float :precioVenta1
      t.float :precioVenta2

      t.timestamps
    end
  end
end
