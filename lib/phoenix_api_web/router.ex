defmodule PhoenixApiWeb.Router do
  use PhoenixApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Allow HTML requests
  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/api", PhoenixApiWeb do
    pipe_through :api
    resources "/businesses", BusinessController, expect: [:new, :edit]
  end


  scope "/", PhoenixApiWeb do
    pipe_through :browser
    get "/", DefaultController, :index
  end

end
