json.array! @products.each do |product|
  json.product product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
end