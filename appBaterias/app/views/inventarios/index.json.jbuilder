json.array!(@inventarios) do |inventario|
  json.extract! inventario, :id, :codigoProducto, :codigoProveedor, :descripcion, :cantidad, :precioCosto, :utilidad, :impuesto, :precioVenta1, :precioVenta2
  json.url inventario_url(inventario, format: :json)
end
