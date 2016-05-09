json.array!(@artist_expertises) do |artist_expertise|
  json.extract! artist_expertise, :id, :name
  json.url artist_expertise_url(artist_expertise, format: :json)
end
