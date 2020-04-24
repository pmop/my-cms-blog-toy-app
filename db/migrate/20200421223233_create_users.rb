class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, limit: 254, null: false
      t.string :name, limit: 50, null: false
      t.string :password_digest
      t.references :posts, null: true, foreign_key: true

      t.timestamps
    end
  end
end
