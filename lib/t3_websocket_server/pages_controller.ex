defmodule T3WebsocketServer.PagesController do
  use Phoenix.Controller

  def index(conn) do
    html conn, """
    <!DOCTYPE HTML>
    <html>
    <head>
      <title>Websocket Example</title>
    </head>
    <body>
      <h2>Incoming messages:</h2>
      <div id="messages"></div>
      <script>
        (function () {
          var messages = document.getElementById("messages"),
              ws = new WebSocket("ws://localhost:3030/ws");

          ws.onmessage = function (event) {
            messages.innerHTML += "<p>" + event.data + "</p>";
          };
        })();
      </script>
    </body>
    </html>
    """
  end

end
