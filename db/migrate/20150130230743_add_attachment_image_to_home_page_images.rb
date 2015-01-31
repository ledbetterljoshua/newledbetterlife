class AddAttachmentImageToHomePageImages < ActiveRecord::Migration
  def self.up
    change_table :home_page_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :home_page_images, :image
  end
end
