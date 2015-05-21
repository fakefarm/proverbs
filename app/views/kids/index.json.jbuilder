json.array!(@kids) do |kid|
  json.extract! kid, :id, :parent_id, :name
  json.url kid_url(kid, format: :json)
end
