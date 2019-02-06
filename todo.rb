class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    return @description
  end

  def due_date
    return @due_date
  end

end


class TodoList

@@tasks = []

  def initialize()

  end

  def self.tasks
        return @@tasks
    end

  def self.add_task(task)
    @@tasks.push(task)
  end

end

work = Task.new("for money", "all the time")
practice = Task.new("get good", "eventually")
clean = Task.new("constantly", "probably never")


TodoList.add_task(work)
TodoList.add_task(practice)
TodoList.add_task(clean)

puts TodoList.tasks
