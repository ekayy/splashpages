class User < ActiveRecord::Base
	attr_accessible :user_name, :business_name, :email, :password
  has_secure_password
  has_one :profile, :dependent => :destroy
  #accepts_nested_attributes_for :profile

  before_create :build_profile
  before_save { |user| user.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of :business_name
  validates_uniqueness_of :user_name
  validates_presence_of :user_name
  validates_format_of :user_name, :with => /^[A-Za-z\d_]+$/
  validates_uniqueness_of :email, :case_sensitive => false
  validates_presence_of :email
  validates_presence_of :password_confirmation
  validates_format_of :email, :with => VALID_EMAIL_REGEX 
  validates_length_of :password, :minimum => 6

  
end
