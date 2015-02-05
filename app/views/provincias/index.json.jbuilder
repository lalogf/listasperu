json.array!(@provincias) do |prov|
  json.extract! prov, :nombre
end