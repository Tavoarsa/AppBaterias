json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cedula, :nombreCliente, :direccion, :telefono1, :telefono2, :email, :tipoCliente, :maximoCredito, :interes, :comentarios
  json.url cliente_url(cliente, format: :json)
end
