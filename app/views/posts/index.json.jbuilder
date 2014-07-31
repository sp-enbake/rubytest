json.array!(@posts) do |post|
  json.extract! post, :id, :name, :title,:permalink
  #json.url post_url(post, format: :json)
end
