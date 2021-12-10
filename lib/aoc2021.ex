defmodule Aoc2021 do
  def file_to_list(file, split \\ "\n") do
    Path.expand(file)
    |> File.read!
    |> String.split(split, trim: true)
  end

  def file_to_int_list(file, split \\ "\n") do
    file_to_list(file, split)
    |> Enum.map((&(String.to_integer(&1))))
  end

end
