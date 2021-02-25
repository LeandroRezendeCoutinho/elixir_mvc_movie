defmodule MvcMovieWeb.PageController do
  use MvcMovieWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
