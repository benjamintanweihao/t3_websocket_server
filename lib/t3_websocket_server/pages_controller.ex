defmodule T3WebsocketServer.PagesController do
  use Phoenix.Controller

  def index(conn) do
    html conn, """
    <html>
      <body>
        <h1>Users</h1>
      </body>
    </html>
    """
  end

end
