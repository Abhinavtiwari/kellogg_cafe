class Menu < ActiveRecord::Base
	attr_accessible :item_picture
	mount_uploader :item_picture, ImageUploader
end
