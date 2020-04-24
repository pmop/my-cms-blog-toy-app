class AddPermalinkToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :permalink, :string, limit: 255
    add_index :tags, :permalink
  end
end
