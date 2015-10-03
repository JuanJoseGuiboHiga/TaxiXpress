class AddAttachmentPictureToDrivers < ActiveRecord::Migration
  def self.up
    change_table :drivers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :drivers, :picture
  end
end
