class ProvinciasController < ApplicationController

	def index
		@provincias = Provincia.where(departamento_id: params[:departamento_id]).order(nombre: :asc)
		render json: @provincias
	end
end
