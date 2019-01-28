class Project < ActiveRecord::Base
	belongs_to :user, foreign_key: "assigned_to"
	has_many :bugs

	belongs_to :manager, class_name: 'User', foreign_key: 'created_by'
	validates :project_name,length: { minimum: 2 }, presence: true
	validates :assigned_to, presence: true
	#validates_uniqueness_of :project_name

	self.per_page = 5
end
WillPaginate.per_page = 5