class Project < ActiveRecord::Base
	belongs_to :user, foreign_key: "assigned_to"

	has_many :bugs
end
