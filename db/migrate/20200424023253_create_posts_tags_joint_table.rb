class CreatePostsTagsJointTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :posts, :tags do |t|
      t.index :post_id
      t.index :tag_id
    end

    add_index :posts_tags, [:post_id, :tag_id]
  end
end
