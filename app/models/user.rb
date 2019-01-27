class User < ActiveRecord::Base
	authenticates_with_sorcery!
	
	has_many :projects, foreign_key: "assigned_to"

  has_many :bugs, foreign_key: "assigned_to"

  has_one :project_manager, foreign_key: "created_by"

	has_attached_file :image


	validates_attachment :image,
  :content_type => { :content_type => "image/png" },
  :size => { :in => 0..100.kilobytes }
	


  # attr_accessible :email, :password, :password_confirmation, :name, :user_type

  # validates_confirmation_of :password
  # validates_presence_of :password, :on => :create, length: {minimum: 6}
  # validates_presence_of :email
  # validates_presence_of :name,length: { minimum: 2 }
  # validates_presence_of :image
  # validates_presence_of :user_type
  # validates_uniqueness_of :email


  validates :password, length: { minimum: 5 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :name,length: { minimum: 3 }
  validates :user_type, presence: true
  validates :image,presence: true
  validates :email, uniqueness: true

end
