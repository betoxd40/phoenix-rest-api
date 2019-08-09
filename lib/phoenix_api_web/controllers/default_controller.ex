defmodule PhoenixApiWeb.DefaultController do
  use PhoenixApiWeb, :controller

  def index(conn, _params) do
    text conn, "BusiApi!"
  end
end
