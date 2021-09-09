class Person < ApplicationRecord
	scope :live_in_country, ->(id) { where("country_id = ?",id) }
	scope :works_in_project, ->(id) { where("project_id = ?",id) }
	scope :has_the_role, ->(id) { where("role_id = ?",id) }	
	scope :has_all_tags, ->(country_id, role_id, project_id) { where("country_id = ? AND role_id = ? AND project_id = ?",country_id, role_id, project_id) }		
	scope :is_employee, -> {where("employee == true")}	

	belongs_to :country
    belongs_to :roles
    belongs_to :projects


end
