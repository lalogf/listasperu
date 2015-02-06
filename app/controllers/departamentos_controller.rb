class DepartamentosController < ApplicationController
	
	def index
		@departamentos = Departamento.select(:id,:nombre).order(nombre: :asc)
		depincluding = []



		@departamentos.each do |dep|
			provdis = []
			provincia = Provincia.select(:id,:nombre).where(departamento_id: dep.id)
			
			provincia.each do |el|

				provdis << {provincia: el, distritos: Distrito.select(:id,:nombre).where(provincia_id: el.id).order(nombre: :asc)}
			end



			# Passing each Departamento to the empty array, with all the Provincias that belongs to it.


			depincluding << { 
				departamento: dep.nombre, 
				id: dep.id, 
				provincias: provdis,
			}
		end


		render json: depincluding
	end

end






  # def index
  #   @posts = Post.where(is_public: true).order(created_at: :desc)

  #   post_data = []

  #   @posts.each do |post|
  #     user = User.select(:id, :firstname, :lastname).find(post.user_id)

  #     post_data << { post: post, user: user }
  #   end

  #   render :json => post_data
  # end