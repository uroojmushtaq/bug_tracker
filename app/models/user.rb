class User < ActiveRecord::Base
	authenticates_with_sorcery!
	
	has_many :projects, foreign_key: "assigned_to"

	has_attached_file :image


	validates_attachment :image,
   :content_type => { :content_type => "image/png" },
  :size => { :in => 0..100.kilobytes }
	

 # validates_attachment :image,
 #                     content_type: { content_type: /\Aimage\/.*\z/ },
 #                     size: { less_than: 1.megabyte }
  
  # attr_accessible :email, :password, :password_confirmation, :name, :user_type

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create, length: {minimum: 6}
  validates_presence_of :email
  validates_presence_of :name
  validates_uniqueness_of :email

end
