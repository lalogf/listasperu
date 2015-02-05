json.array!(@departamentos) do |dep|
  json.extract! dep, :nombre, :id
end