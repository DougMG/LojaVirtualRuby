class Biblioteca
	attr_reader :livros

	def initialize
		@livros = {}
	end

	def adiciona(livro)
		@livros[livro.categoria] ||= []
		@livros[livro.categoria] << livro
	end

	def livros
		@livros.values.flatten
	end
	
	# Usando bloco
	def livros_por_categoria(categoria)
		@livros[categoria].each do |livro|
			yield livro if block_given?
		end
	end

	#Usando proc
	#def livros_por_categoria(categoria, &bloco)
	#	@livros[categoria].each do |livro|
	#		bloco.call livro
	#	end
	#end
end
