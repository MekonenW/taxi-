class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :pick_up_location
      t.string :destination
      t.string :pick_up_date
      t.string :pick_up_time

      t.timestamps
    end
  end
end
