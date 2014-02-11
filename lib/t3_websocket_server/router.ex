defmodule T3WebsocketServer.Router do
  use Phoenix.Router,
        port: 4000,
        dispatch: [
          { :_, [
              {"/stylesheets/[...]", :cowboy_static, {:dir, "priv/static/stylesheets"}},
              {"/javascript/[...]", :cowboy_static, {:dir, "priv/static/javascript"}},
              {"/ws", T3WebsocketServer.WebSocketHandler, {} },
              {:_, Plug.Adapters.Cowboy.Handler, { __MODULE__, [] }}
          ]}
        ]

  get "pages", T3WebsocketServer.PagesController, :index, as: :pages

  def start_link do
    start
  end

  # NOTE: WHY DO I NEED THIS?
  def init(what) do
    IO.inspect what
  end
end
