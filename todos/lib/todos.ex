defmodule Todos do
  # todo - complete later
  def create_todos do
    # old code - not so nice
    # number_of_tasks = IO.gets("Enter the number of todos you want to add: ") # {3, "\n"}
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    # number_of_tasks
    # cool code - pipe operator
    # The pipe operator |> passes the result of an expression as the first parameter of another expression.
    {number_of_tasks, _} =
      IO.gets("Enter the number of todos you want to add: ") |> Integer.parse()
    number_of_tasks
  end

  def temp_todos do
    ["eat apple", "read book", "elixir series", "exercises"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def random_task(tasks) do
    [task] = Enum.take_random(tasks, 1)
    task
  end
end
