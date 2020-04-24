class AddTitleToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :string, limit: 255
  end
end
