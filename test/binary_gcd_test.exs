defmodule BinaryGcdTest do
  use ExUnit.Case
  doctest BinaryGcd

  @max 1_000_000

  test "randomized test" do
    1..200
    |> Enum.map(fn _ -> {:rand.uniform(@max), :rand.uniform(@max)} end)
    |> Enum.map(fn {m, n} -> {BinaryGcd.of(m, n), {m, n}} end)
    |> Enum.map(fn {p, {m, n}} ->
      assert rem(m, p) == 0
      assert rem(n, p) == 0

      (p + 1)..min(m - 1, n - 1)
      |> Enum.map(fn p ->
        assert rem(m, p) != 0 || rem(n, p) != 0
      end)
    end)
  end
end
