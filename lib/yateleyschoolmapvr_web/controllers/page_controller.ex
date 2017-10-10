defmodule YateleyschoolmapvrWeb.PageController do
  use YateleyschoolmapvrWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
