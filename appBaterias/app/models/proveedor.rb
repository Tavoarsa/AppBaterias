class Proveedor < ActiveRecord::Base


	validates :cedulaProveedor, uniqueness: {case_sensitive: false ,message: "Proveedor ya esta registrado"}
	validates :cedulaProveedor, presence: true
	validates :nombreProveedor, presence: true
	validates :nombreContacto, presence: true	
	validates :telefono1, presence: true, numericality: {greater_than:0, message: "Numero de Telefono invalido"}
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
end
