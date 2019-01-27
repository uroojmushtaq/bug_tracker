class Project < ActiveRecord::Base
	belongs_to :user, foreign_key: "assigned_to"
	has_many :bugs

	#has_one :project_manager, through: :user, foreign_key: "created_by"
	validates :project_name,length: { minimum: 2 }
	validates :assigned_to, presence: true
end
