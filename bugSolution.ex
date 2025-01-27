```elixir
list = [1, 2, 3, 4, 5]

result = Enum.filter(list, fn x -> x > 3 end) |> Enum.sum()
IO.puts(result) # Output: 9

#Alternative approach using Enum.reduce with a more robust handling of accumulator updates:
result2 = Enum.reduce(list, 0, fn x, acc ->  x > 3 ? acc + x : acc end)
IO.puts(result2) # Output: 9
```