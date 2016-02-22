class Biblioteca
	attr_reader :livros

	def initialize
		#@livros = {}
		@banco_de_arquivos = BancoDeArquivos.new
	end

	def adiciona(livro)
		#@livros[livro.categoria] ||= []
		#@livros[livro.categoria] << livro
		#@banco_de_arquivos.salva livro
		salva livro do
			livros << livro
		end
	end

	#def livros
	#	@livros.values.flatten
	#end
	
	# Usando bloco
	#def livros_por_categoria(categoria, bloco_com_p, bloco_com_puts)
		#@livros[categoria].each do |livro|
			#yield livro if block_given?
			# Sem o &, transformamos o bloco em um objeto novamente
			#bloco_com_p.call livro
			#bloco_com_puts.call livro
		#end
	#end

	#Usando proc
	#def livros_por_categoria(categoria, &bloco)
	#	@livros[categoria].each do |livro|
	#		bloco.call livro
	#	end
	#end

	def livros_por_categoria(categoria)
		#@livros[categoria].each do |livro|
			#yield livro if block_given?
		#end
		livros.select { |livro| livro.categoria == categoria }
	end
	
	def livros
		@livros ||= @banco_de_arquivos.carrega
	end

	private
	def salva(livro)
		@banco_de_arquivos.salva livro
		yield if block_given?
	end
end
