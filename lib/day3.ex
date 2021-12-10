
defmodule Day3 do
  import Aoc2021

  def invert_map(map), do: Map.new(map, fn {key, val} -> {val, key} end)
  def day3 do
    frequency_maps =
      file_to_list("./data/day3.dat")
      |> Enum.map(&String.codepoints/1)
      |> Enum.zip
      |> Enum.map(& Tuple.to_list(&1) |> Enum.frequencies |> invert_map)

    gamma_bits = frequency_maps |> Enum.map(& Enum.max(&1) |> elem(1)) |> List.to_charlist |> List.to_integer(2)
    epsilon_bits = frequency_maps |> Enum.map(& Enum.min(&1) |> elem(1)) |> List.to_charlist |> List.to_integer(2)

    gamma_bits * epsilon_bits
  end
end
