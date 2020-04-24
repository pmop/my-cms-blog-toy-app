class RemoveContentFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :content
    remove_column :posts, :content_type
  end
end
