defmodule JsTest.Web.Router do
  use JsTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JsTest.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/view", PageController, :view
    get "/modal", PageController, :modal
    get "/:id", PageController, :show
  end

  # Other scopes may use custom stacks.
  scope "/api", JsTest.Web do
    pipe_through :api

    get "/list", ApiController, :show
    get "/:item", ApiController, :add
  end
end
