class User < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_uniqueness_of :email, :case_sensitive => false
  validates_presence_of :email
  validates_presence_of :password_confirmation
  validates_format_of :email, :with => VALID_EMAIL_REGEX 
  validates_length_of :password, :minimum => 6
end
