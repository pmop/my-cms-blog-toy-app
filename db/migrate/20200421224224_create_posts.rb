class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tags, null: false, foreign_key: true
      t.references :comment_area, null: true, foreign_key: true
      t.text :content
      t.string :content_type, limit: 40

      t.timestamps
    end
  end
end
