# URN

[![Build Status](https://travis-ci.org/stevelacy/elixir-urn.png?branch=master)](https://travis-ci.org/stevelacy/elixir-urn)

> [hex.pm documentation](https://hexdocs.pm/urn/readme.html)

**Uniform Resource Name (URN) parsing and validation in Elixir**

## Installation

Add `urn` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:urn, "~> 0.1.0"}]
end
```

## Example

```elixir
defmodule Project do
  import Urn
  # Parse input string "urn:collection:id" to Map
  def parse_urn(input) do
    IO.inspect parse(input)
    #  %Schema{
    #    namespace: namespace,
    #    collection: collection,
    #    identifier: identifier,
    #  }
  end

  # Validate input string and verify that it is a URN
  def validate_urn(input) do
    IO.inspect validate(input)
    # Boolean true/false
  end
end

```

License [MIT](LICENSE)
