json.array!(@artists) do |artist|
  json.extract! artist, :id, :inspiration
  json.url artist_url(artist, format: :json)
end
