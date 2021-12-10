defmodule Day1 do
  import Aoc2021

  def day1 do
    int_list = file_to_int_list('./data/day1.dat') |> (&([hd(&1) + 1 | &1])).()
    Enum.reduce(int_list, {hd(int_list), 0},
    fn cur_val, {last_val, count} ->
      cond do
       last_val < cur_val -> {cur_val, count + 1}
       last_val >= cur_val -> {cur_val, count}
      end
    end) |> elem(1)
  end
end
