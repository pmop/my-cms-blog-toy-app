class CreatePostsUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :posts, :users do |t|
      t.index :post_id
      t.index :user_id
    end

    add_index :posts_users, [:post_id, :user_id]
  end
end
