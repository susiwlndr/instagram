class CreateCommentPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_posts do |t|
      t.text :comment
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
