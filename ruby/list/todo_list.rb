class TodoList
	def initialize(task_array)
		@list = task_array
	end

	def add_item(new_task)
		@list << new_task
	end

	def delete_item(completed_task)
		@list.delete(completed_task)
	end

	def get_item(index_number)
		@list[index_number]
	end

	def get_items
		@list
	end
end