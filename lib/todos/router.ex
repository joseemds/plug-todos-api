defmodule Todos.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/**"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(conn, 200, "Welcome")
  end

  match _ do
    send_resp(conn, 404, "Whoops")
  end
end
