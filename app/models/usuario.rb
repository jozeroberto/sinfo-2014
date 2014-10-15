class Usuario < ActiveRecord::Base
  attr_accessible :cpf, 
                  :email, 
                  :endereco, 
                  :minicurso, 
                  :nome, 
                  :palestras, 
                  :senha, 
                  :telefone
				  :confirma_senha
				  
				def valida_senha
					if self.senha == self.confirma_senha
						return true
					else
						return false
					end
				end
end
