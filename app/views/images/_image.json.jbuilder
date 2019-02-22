json.extract! image, :id, :created_at, :updated_at
json.file_url url_for(image.content)
json.url image_url(image, format: :json)
