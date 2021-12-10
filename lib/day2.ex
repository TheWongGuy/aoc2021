defmodule Day2 do
  import Aoc2021

  def instruction_to_vector2("forward " <> dist), do: {String.to_integer(dist), 0}
  def instruction_to_vector2("up " <> dist), do: {0, String.to_integer(dist) * -1}
  def instruction_to_vector2("down " <> dist), do: {0, String.to_integer(dist)}
  def add_vector2({x1, y1}, {x2, y2}), do: {x1 + x2, y1 + y2}

  def day2 do
    day2({0, 0}, file_to_list('./data/day2.dat'))
  end

  def day2(coord, instr_list) do
    case instr_list do
      [] -> coord
      [v | rest] -> instruction_to_vector2(v) |> add_vector2(coord) |> day2(rest)
    end
  end
end
