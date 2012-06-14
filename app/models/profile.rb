class Profile < ActiveRecord::Base
  attr_accessible :content, :title, :image
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates_presence_of :user_id

  def self.search(search)
  	if search
  		find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  	else
  		find(:all)
  	end
  end
end
