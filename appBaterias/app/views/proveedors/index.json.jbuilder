json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :cedulaProveedor, :nombreProveedor, :nombreContacto, :telefono1, :telefono2, :email, :maximoCredito
  json.url proveedor_url(proveedor, format: :json)
end
