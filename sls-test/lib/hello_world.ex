defmodule HelloWorld do
  def handle(event, context) do
    {:ok, %{:message => "Elixir on AWS Lambda", :event => event, :context => inspect(context)}}
  end
end
