defmodule AivPlantDoctor.Repo do
  use Ecto.Repo,
    otp_app: :aiv_plant_doctor,
    adapter: Ecto.Adapters.Postgres
end
