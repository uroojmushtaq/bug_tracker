module ApplicationHelper

	def user_options
	  [ ["Manager", 'manager'], ["Developer", 'developer'], ["QA", 'qa'] ]
	end

	def bug_options
		 [ ["Bug", 'bug'], ["Feature", 'feature'] ]
	end

	def bug_status_options
	  [ ["New", '1'], ["Started", '2'], ["Resolved", '3'] ]
	end

	def feature_status_options
	  [ ["New", '1'], ["Started", '2'], ["Completed", '3'] ]
	end


	# def qa_array
	# 	@users = User.where(:user_type => 3)
	# 	arr = [][]
	# 	@users.each do |r| 
	# 		@users.each do [c]
	# 		arr[r][c] = [i.name,i.id.to_s]
	# 	end
	# 	end
	# 	arr
	# end


end
