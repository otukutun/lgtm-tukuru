json.id image.slug
json.image_url polymorphic_url(image.lgtm)
json.markdown_text "![LGTM](#{polymorphic_url(image.lgtm)})"
json.url image_url(image.slug)
