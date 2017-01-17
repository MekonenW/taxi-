class ChangeDataForPickUpDate < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :pick_up_date, :date
  end
end
