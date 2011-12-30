class Image < ActiveRecord::Base

  attr_accessible :place_id, :image

  belongs_to :place
  mount_uploader :image, ImageUploader

end
