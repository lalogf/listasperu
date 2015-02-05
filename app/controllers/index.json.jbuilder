json.array!(@distritos) do |dist|
  json.extract! dist, :nombre
end