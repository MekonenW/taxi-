class ChangeIntegerLimitInPosts < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :phone, :integer, limit: 8
  end
end
