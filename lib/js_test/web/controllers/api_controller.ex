defmodule JsTest.Web.ApiController do
  use JsTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def add(conn, %{"item" => item}) do
    JsTest.Worker.add_item(item)
    IO.puts "api add"
    json conn, %{item: item}
  end

  def show(conn, _params) do

    json conn, %{items: JsTest.Worker.list_items()}
  end
end

