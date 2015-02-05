class DepartamentosController < ApplicationController
	
	def index
	@departamentos = Departamento.all
	end

end
