class Image < ActiveRecord::Base

  attr_accessible :place_id, :image, :remove_image, :image_cache

  belongs_to :place
  mount_uploader :image, ImageUploader

end
