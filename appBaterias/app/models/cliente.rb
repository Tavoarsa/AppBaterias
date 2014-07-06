class Cliente < ActiveRecord::Base

	validates :cedula, uniqueness: {case_sensitive: false ,message: "Cliente ya esta registrado"}
	validates :cedula, presence: true
	validates :nombreCliente, presence: true
	validates :direccion, presence: true
	validates :telefono1, presence: true, numericality: {greater_than:0, message: "Numero de Telefono invalido"}
	validates :tipoCliente, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }



end
