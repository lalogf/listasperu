# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.open("departamentos.txt").each do |line|
	line.split("\r").each do |dp|
		Departamento.create(nombre: dp.titleize)
	end
end

File.open("provincias.txt").each do |line|
	line.split("\r").each do |pr|
		prov = pr.capitalize.split("-").to_hash
		# Provincia.create(nombre: prov[0].titleize, departamento_id: prov[1].to_i)
	end
end

Provincia.create(nombre: "Marañon", departamento_id: 24)

