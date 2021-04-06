class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :user_nickname, null: false
      t.text :content, null: false
      t.timestamps
    end

    add_reference :comments, :post, type: :uuid, index: { unique: true }, foreign_key: true, dependent: :delete
  end
end
