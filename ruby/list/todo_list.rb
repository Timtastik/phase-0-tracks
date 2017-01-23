class TodoList
	def initialize(array_of_chores)
		@array = array_of_chores
	end

	def get_items
		@array
	end

	def add_item(new_chore)
		@array.push(new_chore)
	end

	def delete_item(chore_listed)
		@array.delete(chore_listed)
	end

	def get_item(integer)
		@array[integer]
	end
end