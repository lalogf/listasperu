# encoding: UTF-8
class Departamento < ActiveRecord::Base
	has_many :provincias
end
