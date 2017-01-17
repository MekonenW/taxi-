class ChangeDataTypeForPhone < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :phone, :integer
  end
end
