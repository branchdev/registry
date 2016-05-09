json.array!(@school_interests) do |school_interest|
  json.extract! school_interest, :id, :name
  json.url school_interest_url(school_interest, format: :json)
end
