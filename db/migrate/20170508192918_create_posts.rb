class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :link_url, null: false
      t.references :submitter, references: :users, null: false

      t.timestamps(null: false)
    end
  end
end
