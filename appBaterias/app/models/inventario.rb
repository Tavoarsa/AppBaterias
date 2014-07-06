class Inventario < ActiveRecord::Base

	#Validaciones
	validates :codigoProducto, presence: true
	validates :codigoProveedor, presence: true
	validates :descripcion, presence: true
	validates :cantidad, presence: true, numericality: {greater_than:0, message: "Cantidad invalida"}
	validates :precioCosto, presence: true
	validates :utilidad, presence: true
	validates :impuesto, presence: true
	validates :precioVenta1, presence: true

	# Calcular precioVenta1
	def precioVenta1()

		:precioVenta1= :precioCosto + (:precioCosto * (:utilidad/100))+(:impuesto/100)
	end







end
