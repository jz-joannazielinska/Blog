class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title, null: false, index: { unique: true }
      t.text :content, null: false
      t.timestamps
    end
  end
end
