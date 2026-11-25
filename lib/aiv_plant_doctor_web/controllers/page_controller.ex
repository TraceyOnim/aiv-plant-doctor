defmodule AivPlantDoctorWeb.PageController do
  use AivPlantDoctorWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
