defmodule T3WebsocketServer.Mixfile do
  use Mix.Project

  def project do
    [ app: :t3_websocket_server,
      version: "0.0.1",
      elixir: "~> 0.12.4-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { T3WebsocketServer, [] }]
  end

  defp deps do
    [
      { :phoenix, github: "phoenixframework/phoenix" },
      { :plug, git: "https://github.com/elixir-lang/plug.git", tag: "v0.2.0", override: true },
    ]
  end
end
