defmodule BinaryGcd do
  @moduledoc """
  A module implementing the binary GCD algorithm (also known as Stein's algorithm).

  The binary GCD algorithm is an efficient method for computing the greatest common divisor
  of two non-negative integers. It uses only subtraction and bit operations, making it
  particularly fast for large numbers.

  ## Algorithm Overview

  The binary GCD algorithm works by:
  1. If both numbers are even, divide both by 2 and multiply the result by 2
  2. If one number is even, divide it by 2
  3. If both numbers are odd, subtract the smaller from the larger
  4. Repeat until one number becomes zero

  ## Performance

  This algorithm is generally faster than the Euclidean algorithm for large numbers
  because it avoids expensive division operations, using only bit shifts and subtraction.

  ## Examples

      iex> BinaryGcd.of(48, 18)
      6

      iex> BinaryGcd.of(0, 5)
      5

      iex> BinaryGcd.of(12, 0)
      12

      iex> BinaryGcd.of(54, 24)
      6
  """

  @doc """
  Computes the greatest common divisor of two non-negative integers using the binary GCD algorithm.

  ## Parameters

    * `m` - First non-negative integer
    * `n` - Second non-negative integer

  ## Returns

    * The greatest common divisor of `m` and `n`

  ## Examples

      iex> BinaryGcd.of(48, 18)
      6

      iex> BinaryGcd.of(0, 5)
      5

      iex> BinaryGcd.of(12, 0)
      12

      iex> BinaryGcd.of(54, 24)
      6

      iex> BinaryGcd.of(17, 13)
      1

  ## Algorithm Steps

  1. **Base cases**: If either number is 0, return the other number
  2. **Both even**: If both numbers are even, divide both by 2, compute GCD, then multiply by 2
  3. **One even**: If only one number is even, divide it by 2 and continue
  4. **Both odd**: If both numbers are odd, subtract the smaller from the larger and continue
  5. **Recursion**: Continue until one number becomes zero
  """
  @spec of(non_neg_integer(), non_neg_integer()) :: non_neg_integer()
  def of(m, n)
  def of(0, n), do: n
  def of(m, 0), do: m

  def of(m, n) when Bitwise.band(m, 1) == 0 and Bitwise.band(n, 1) == 0 do
    of(Bitwise.bsr(m, 1), Bitwise.bsr(n, 1))
    |> Bitwise.bsl(1)
  end

  def of(m, n) when Bitwise.band(n, 1) == 0 do
    of(m, Bitwise.bsr(n, 1))
  end

  def of(m, n) when m <= n, do: of(m, n - m)
  def of(m, n), do: of(n, m)

  @doc """
  Computes the greatest common divisor of a list of non-negative integers using the binary GCD algorithm.

  This function extends the binary GCD algorithm to work with multiple numbers by computing
  the GCD of the first two numbers, then using that result with the next number, and so on.

  ## Parameters

    * `numbers` - A list of non-negative integers

  ## Returns

    * The greatest common divisor of all numbers in the list

  ## Examples

      iex> BinaryGcd.of([48, 18, 12])
      6

      iex> BinaryGcd.of([0, 5, 10])
      5

      iex> BinaryGcd.of([12, 0, 8])
      4

      iex> BinaryGcd.of([54, 24, 36])
      6

      iex> BinaryGcd.of([17, 13, 19])
      1

      iex> BinaryGcd.of([100, 200, 300, 400])
      100

      iex> BinaryGcd.of([42])
      42

  ## Algorithm

  For a list of numbers [a, b, c, d, ...], this function computes:
  GCD(a, GCD(b, GCD(c, GCD(d, ...))))

  This is equivalent to finding the GCD of all numbers in the list.
  """
  @spec of(list(non_neg_integer())) :: non_neg_integer()
  def of([]), do: 1
  def of([a]), do: a
  def of([a, b]), do: of(a, b)
  def of([head | tail]), do: of(head, of(tail))
end
