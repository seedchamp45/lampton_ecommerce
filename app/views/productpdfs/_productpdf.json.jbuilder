json.extract! productpdf, :id, :filename, :content_type, :file_contents, :title, :status, :productid, :topics, :created_at, :updated_at
json.url productpdf_url(productpdf, format: :json)
