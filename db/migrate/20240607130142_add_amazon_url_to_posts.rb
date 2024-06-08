class AddAmazonUrlToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :amazonurl, :string
  end
end
