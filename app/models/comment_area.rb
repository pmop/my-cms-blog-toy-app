class CommentArea < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :post
end
