class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :text, null: false
      t.references :commenter, references: :users, null: false
      t.references :post, foreign_key: true, null: false

      t.timestamps(null: false)
    end
  end
end
