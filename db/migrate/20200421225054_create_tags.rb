class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name, limit: 30
      t.references :posts, null: true, foreign_key: true

      t.timestamps
    end
  end
end
