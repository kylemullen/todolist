class List
	def initialize(name)
		@tasks = []
		@completed_tasks = []
		@name = name
	end

	def add_task(task)
		@tasks << task
	end

	def completed(task)
		@tasks.delete(task)
		@completed_tasks<<task
	end

	def display_tasks
		puts "These are your Incompleted tasks:"
		@tasks.each do |task|
			puts task.name
			puts task.notes
		end
		puts "These are your Completed tasks:"
		@completed_tasks.each do |task|
			puts task.name
			puts task.notes
		end
	end

	def delete(task)
		@tasks.delete(task)
	end


end

class Task
	def initialize(name)
		@name = name
	end

	def name
		return @name
	end

	def add_notes(notes)
		@notes = notes
	end

	def notes
		return "Notes: #{@priority}"
	end

	def set_status(status)
		@status = status
	end

	def status
		return "Status: #{@status}"
	end

	def edit(new_name)
		@name = new_name
	end

end

list = List.new("Things to do today")

task = Task.new("Go to class")
task2 = Task.new("Make Dinner")
task3 = Task.new("Go to Sleep")
list.add_task(task)
list.add_task(task2)
list.add_task(task3)

list.display_tasks
list.completed(task)

list.display_tasks

list.delete(task3)
list.display_tasks
# puts "Welcome to the \'To-Do\' List App!"
# puts "You can add, delete, edit, add notes, and print out your whole list!"

# while true
# 	puts "Okay "

# # list.add_task(task)
# # list.add_task(task2)
# # list.add_task(task3)



# task.set_priority("High")
# task.set_status("Unfinis")
# task2.set_priority("Medium")
# task2.set_status("Completed")
# task3.set_priority("Very High")

# list.display_tasks

# task3.edit("Watch Cavs highlights")

# list.display_tasks

# list.delete("Go to sleep")

# list.display_tasks
















