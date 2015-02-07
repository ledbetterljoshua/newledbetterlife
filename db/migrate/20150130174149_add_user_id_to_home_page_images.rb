class AddUserIdToHomePageImages < ActiveRecord::Migration
  def change
    add_column :home_page_images, :user_id, :integer
    add_index :home_page_images, :user_id
  end

  def self.down
    remove_column :home_page_images, :user_id
    remove_column :home_page_images, :user_id
  end
end
