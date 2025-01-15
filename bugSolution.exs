```elixir
list = [1, 2, 3, 4, 5]

# Correct approach using List.delete/2 and reassignment.
list = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
|> Enum.reverse()

IO.inspect(list)

#Alternative using Enum.filter
list2 = [1, 2, 3, 4, 5]
list2 = Enum.filter(list2, fn x -> x != 3 end)
IO.inspect(list2)
```