class User < ActiveRecord::Base

  attr_accessible :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  validates_uniqueness_of :email

end
