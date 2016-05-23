class AddAttachmentImageToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :image_file_name,    :string,   :after => :article_id
    add_column :images, :image_content_type, :string,   :after => :image_file_name
    add_column :images, :image_file_size,    :integer,  :after => :image_content_type
    add_column :images, :image_updated_at,   :datetime, :after => :image_file_size
  end

  def self.down
    remove_column :images, :image_file_name
    remove_column :images, :image_content_type
    remove_column :images, :image_file_size
    remove_column :images, :avatar_updated_at
  end
end
