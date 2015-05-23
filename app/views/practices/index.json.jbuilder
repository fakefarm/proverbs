json.array!(@practices) do |practice|
  json.extract! practice, :id, :title, :body
  json.url practice_url(practice, format: :json)
end
