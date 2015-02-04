# encoding: UTF-8

list = []
File.open("provincias.txt").each do |line|
	line.split("\r").each do |pr|
		list << pr.capitalize.split("-")

	end
end

# list.each do |l|
# 	p l
# end