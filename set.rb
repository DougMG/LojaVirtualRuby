module VendaFacil
	class Set
		def initialize
			@banco_de_arquivos = BancoDeArquivos.new
			@livros = Array.new
		end

		def adiciona(livro)
			salva livro do
				livros << livro
			end
		end

		def livros_por_categoria(categoria)
			livros.select { |livro| 
				livro.categoria == categoria 
			}
		end

		def livros
			@livros ||= @banco_de_arquivos.carrega
		end

		def salva(livro)
			@banco_de_arquivos.salva livro
			
		end
	end
end
