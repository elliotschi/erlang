defmodule Erlang.HelloController do
  use Erlang.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end