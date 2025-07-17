# BinaryGcd

An efficient Elixir implementation of the binary GCD algorithm (Stein's algorithm) for computing the greatest common divisor (GCD) of two non-negative integers using only bitwise operations and subtraction.

## Features

- Fast GCD computation using Stein's algorithm
- Pure Elixir, no dependencies for core logic
- Well-documented and tested
- Suitable for large integers

## Installation

### From Hex (Recommended)

Add `binary_gcd` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:binary_gcd, "~> 1.0"}
  ]
end
```

Then run:

```bash
mix deps.get
```

## Usage

You can use the module directly in your code or in IEx:

```elixir
iex> BinaryGcd.of(48, 18)
6

iex> BinaryGcd.of(0, 5)
5

iex> BinaryGcd.of(54, 24)
6

iex> BinaryGcd.of(17, 13)
1
```

## Algorithm

This library implements the binary GCD algorithm, also known as Stein's algorithm. It is generally faster than the classical Euclidean algorithm for large numbers because it avoids division and uses only subtraction and bitwise operations.

**Algorithm steps:**
1. If either number is zero, return the other number.
2. If both numbers are even, divide both by 2 and multiply the result by 2.
3. If one number is even, divide it by 2.
4. If both numbers are odd, subtract the smaller from the larger.
5. Repeat until one number becomes zero.

## Tested Platforms

* Ubuntu 22.04 / Elixir 1.18 / Erlang/OTP 28

## License

Copyright (c) 2025 University of Kitakyushu

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

