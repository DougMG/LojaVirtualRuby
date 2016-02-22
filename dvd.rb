# coding: utf-8
class DVD < Midia
	attr_accessor :valor
	attr_reader :titulo
		
	def initialize(titulo, valor, categoria)
		
		super()
		@titulo = titulo
		@valor = valor
		@categoria = categoria
		#@desconto = 0.1
	end

	def to_s
		%Q{ Título: #{@titulo}, Valor: #{@valor} }
	end
end
