class User < ActiveRecord::Base
	authenticates_with_sorcery!
  
  attr_accessible :email, :password, :password_confirmation, :name, :user_type

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create, length: {minimum: 6}
  validates_presence_of :email
  validates_presence_of :name
  validates_uniqueness_of :email
end
