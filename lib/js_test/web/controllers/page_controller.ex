defmodule JsTest.Web.PageController do
  use JsTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
