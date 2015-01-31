class AddUserIdToProfileImages < ActiveRecord::Migration
  def change
    add_column :profile_images, :user_id, :integer
    add_index :profile_images, :user_id
  end
end
