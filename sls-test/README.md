# HelloWorld

Use this to find the layer arn:

	aws cloudformation describe-stack-resources --stack-name elixir-example | python -c 'import os, sys, json; print(list(filter(lambda r: r["ResourceType"] == "AWS::Lambda::LayerVersion", json.load(sys.stdin)["StackResources"]))[0]["PhysicalResourceId"])'

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hello_world` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hello_world, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hello_world](https://hexdocs.pm/hello_world).

