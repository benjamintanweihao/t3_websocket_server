defmodule T3WebsocketServer.Router do
  use Phoenix.Router,
    port: 3030,
    dispatch: [
      { :_, [
          {"/stylesheets/[...]", :cowboy_static, {:dir, "priv/static/stylesheets"}},
          {"/javascript/[...]", :cowboy_static, {:dir, "priv/static/javascript"}},
          {"/ws", T3WebsocketServer.WebSocketHandler, [] },
          {:_, Plug.Adapters.Cowboy.Handler, { __MODULE__, [] }}
      ]}
    ]

  get "/pages", T3WebsocketServer.PagesController, :index, as: :pages

  def start_link do
    start
  end

end
