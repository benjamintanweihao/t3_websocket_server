defmodule T3WebsocketServer.Supervisor do
  use Supervisor.Behaviour

  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(T3WebsocketServer.Router, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
