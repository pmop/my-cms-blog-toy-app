class AddPermalinkToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :permalink, :string, limit: 255
    add_index :posts, :permalink
  end
end
