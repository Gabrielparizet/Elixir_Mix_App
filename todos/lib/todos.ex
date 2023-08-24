defmodule Todos do
  def create_todos do
    # old code - not so nice
    # number_of_tasks = IO.gets("Enter the number of todos you want to add: ") # {3, "\n"}
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    # number_of_tasks
    # cool code - pipe operator
    # The pipe operator |> passes the result of an expression as the first parameter of another expression.
    {number_of_tasks, _} = IO.gets("Enter the number of todos you want to add: ") |> Integer.parse()
    number_of_tasks
  end
end
