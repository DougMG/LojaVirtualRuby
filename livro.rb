# coding: utf-8
class Livro
	attr_accessor :valor
	attr_reader :titulo, :autor, :categoria, :isbn

	def initialize(titulo, autor, isbn = 1, numero_de_paginas, valor, categoria)
		
		@titulo = titulo
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@valor = valor
		@categoria = categoria
		
		#puts "Autor: #{autor}, ISBN: #{isbn}, Pág: #{numero_de_paginas}"

	end
	
	#def preco
	#	@preco
	#end

	#def preco=(preco)
	#	@preco = preco
	#end
	

	def to_s
		"Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, 
		Categoria: #{@categoria}"
	end
	
	def eql?(outro_livro)
		@isbn == outro_livro.isbn
	end
	
	def hash
		@isbn.hash
	end
end
