class RenamePostsToLinks < ActiveRecord::Migration[6.0]
  def change
    rename_table :posts, :links
  end
end
