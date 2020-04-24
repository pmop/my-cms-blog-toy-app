class CreateCommentAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_areas do |t|
      t.references :comments, null: true, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
