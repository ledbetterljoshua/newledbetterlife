json.array!(@profile_images) do |profile_image|
  json.extract! profile_image, :id, :title
  json.url profile_image_url(profile_image, format: :json)
end
