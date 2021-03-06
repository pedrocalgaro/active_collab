class ActiveCollab::Task
	
	attr_accessor :id, :name, :permalink, :state, :visibility, :is_completed, 
	  :comments_url, :comments_count, :is_locked, :subtasks_url,
	  :total_subtasks, :open_subtasks, :completed_subtasks, :attachments_url,
	  :attachments_count, :assignee_id, :delegated_by_id, :other_assignee_ids,
	  :category_id, :label_id, :user_is_subscribed, :version, :priority, :due_on,
	  :project_id, :milestone_id, :task_id


	def self.from_hash(hash)
		task = ActiveCollab::Task.new
		task.id = hash["id"].to_i
		task.name = hash["name"]
		task.permalink = hash["permalink"]
		task.state = hash["state"].to_i
		task.is_completed = hash["is_completed"].to_i
		task.comments_url = hash["comments_url"]
		task.comments_count = hash["comments_count"].to_i
		task.is_locked = hash["is_locked"].to_i
		task.subtasks_url = hash["subtasks_url"]
		task.total_subtasks = hash["total_subtasks"].to_i
		task.open_subtasks = hash["open_subtasks"].to_i
		task.completed_subtasks = hash["completed_subtasks"].to_i
		task.attachments_url = hash["attachments_url"]
		task.attachments_count = hash["attachments_count"].to_i
		task.assignee_id = hash["assignee_id"].to_i
		task.delegated_by_id = hash["delegated_by_id"].to_i
		task.other_assignee_ids = hash["other_assignee_ids"]
		task.category_id = hash["category_id"].to_i
		task.label_id = hash["label_id"].to_i
		task.user_is_subscribed = hash["user_is_subscribed"].to_i
		task.version = hash["version"]
		task.priority = hash["priority"].to_i
		task.due_on = hash["due_on"].to_i
		task.project_id = hash["project_id"].to_i
		task.milestone_id = hash["milestone_id"].to_i
		task.task_id = hash["task_id"].to_i
		task
	end


end