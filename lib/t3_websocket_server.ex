defmodule T3WebsocketServer do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    T3WebsocketServer.Supervisor.start_link
  end
end
