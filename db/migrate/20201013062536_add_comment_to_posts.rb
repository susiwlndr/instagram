class AddCommentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :comment, :string
  end
end
