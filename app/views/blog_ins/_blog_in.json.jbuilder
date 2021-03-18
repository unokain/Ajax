json.extract! blog_in, :id, :title, :content, :created_at, :updated_at
json.url blog_in_url(blog_in, format: :json)
