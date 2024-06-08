class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :content, null: false, comment: "内容"
      t.references :user, null: false, foreign_key: true, comment: "ユーザーID"

      t.timestamps
    end
  end
end
