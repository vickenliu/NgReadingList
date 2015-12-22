json.array!(@books) do |book|
  json.extract! book, :id, :name, :amazon_id, :description, :rate, :author
  json.url book_url(book, format: :json)
end
