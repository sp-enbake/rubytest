json.array!(@posts) do |post|
  json.extract! post, :id, :name, :title, :permalink
end
