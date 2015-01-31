class AddAttachmentImageToBannerimages < ActiveRecord::Migration
  def self.up
    change_table :bannerimages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bannerimages, :image
  end
end
