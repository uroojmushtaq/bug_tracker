module BugsHelper
	def bug_options
		 [ ["Bug", 'bug'], ["Feature", 'feature'] ]
	end

	def bug_status_options
	  [ ["New", 'new'], ["Started", 'started'], ["Resolved", 'resolved'] ]
	end

	def feature_status_options
	  [ ["New", 'new'], ["Started", 'started'], ["Completed", 'completed'] ]
	end
 # <%= f.select :status, options_for_select(feature_status_options,:selected => @bug.status), { prompt: 'Select status' }%>
# <%= f.select :status, options_for_select(bug_status_options,:selected => @bug.status), { prompt: 'Select status' }%>
end
