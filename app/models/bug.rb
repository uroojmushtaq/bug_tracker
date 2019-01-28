class Bug < ActiveRecord::Base
	belongs_to :project

	belongs_to :user, foreign_key: "assigned_to"
	
	has_attached_file :image

	validates_attachment :image,
  :content_type => { :content_type => "image/png" },
  :size => { :in => 0..100.kilobytes }

  validates :title,length: { minimum: 2 }, presence: true

  validates_uniqueness_of :title
 self.per_page = 5
end
WillPaginate.per_page = 5
