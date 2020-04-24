class Comment < ApplicationRecord
  belongs_to :comment_area
  belongs_to :user
end
