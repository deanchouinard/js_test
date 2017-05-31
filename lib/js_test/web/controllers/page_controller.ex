defmodule JsTest.Web.PageController do
  use JsTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    text conn, "#{id}"
  end

end
