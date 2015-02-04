# encoding: UTF-8
class Distrito < ActiveRecord::Base
	belongs_to :provincias
end
