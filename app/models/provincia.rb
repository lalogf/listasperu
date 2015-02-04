# encoding: UTF-8
class Provincia < ActiveRecord::Base
	belongs_to :departamentos
	has_many :distritos 
end
