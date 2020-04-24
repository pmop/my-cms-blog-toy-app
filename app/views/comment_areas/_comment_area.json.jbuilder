json.extract! comment_area, :id, :comments_id, :post_id, :created_at, :updated_at
json.url comment_area_url(comment_area, format: :json)
