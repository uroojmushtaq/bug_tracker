json.extract! project, :id, :project_name, :assigned_to, :created_by, :created_at, :updated_at
json.url project_url(project, format: :json)
