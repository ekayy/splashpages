class Profile < ActiveRecord::Base
  attr_accessible :content, :title, :image
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates_presence_of :user_id
end
