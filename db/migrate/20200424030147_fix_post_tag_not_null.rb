class FixPostTagNotNull < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :tags_id
    remove_column :tags, :posts_id
  end
end
