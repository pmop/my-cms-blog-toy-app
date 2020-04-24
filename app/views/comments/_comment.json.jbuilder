json.extract! comment, :id, :comment_area_id, :user_id, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)
