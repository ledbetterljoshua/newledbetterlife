json.array!(@socials) do |social|
  json.extract! social, :id, :facebook, :twitter, :instagram
  json.url social_url(social, format: :json)
end
