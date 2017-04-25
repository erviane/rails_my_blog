json.extract! tag_blog, :id, :blog_id, :tag_id, :created_at, :updated_at
json.url tag_blog_url(tag_blog, format: :json)
