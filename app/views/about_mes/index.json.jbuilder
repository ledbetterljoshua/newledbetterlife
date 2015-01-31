json.array!(@about_mes) do |about_me|
  json.extract! about_me, :id, :description, :title
  json.url about_me_url(about_me, format: :json)
end
