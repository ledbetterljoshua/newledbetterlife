json.array!(@bannerimages) do |bannerimage|
  json.extract! bannerimage, :id
  json.url bannerimage_url(bannerimage, format: :json)
end
