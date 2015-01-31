class AddUserIdToSocials < ActiveRecord::Migration
  def change
    add_column :socials, :user_id, :integer
    add_index :socials, :user_id
  end
end
