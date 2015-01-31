class AddUserIdToBannerimages < ActiveRecord::Migration
  def change
    add_column :bannerimages, :user_id, :integer
    add_index :bannerimages, :user_id
  end
end
