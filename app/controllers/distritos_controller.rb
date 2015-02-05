class DistritosController < ApplicationController
	def index
		@distritos = Distrito.where(provincia_id: params[:provincia_id])

		render json: @distritos
	end
end
