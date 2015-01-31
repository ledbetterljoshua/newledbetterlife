class CreateBannerimages < ActiveRecord::Migration
  def change
    create_table :bannerimages do |t|

      t.timestamps
    end
  end
end
