json.extract! image, :id, :created_at, :updated_at
json.file_url url_for(image.content.thumbnail)
json.url image_url(image, format: :json)
