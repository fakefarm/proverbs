json.array!(@verses) do |verse|
  json.extract! verse, :id, :text, :chapter, :verse
  json.url verse_url(verse, format: :json)
end
